-- AddCallback, RemoveCallback, DoCallbacks borrowed from Utils_13.lua distributed with SequenceBars. Thanks Thurallor!

function _G.AddCallback(object, event, callback)
    if (object == nil) then
        error("First argument to AddCallback() is nil", 2);
    else
        if (object[event] == nil) then
            object[event] = callback;
        else
            if (type(object[event]) == "table") then
                -- Make sure this callback hasn't already been added:
                -- (Incorporated from Garan's version)
                local exists=false;
                for k,v in ipairs(object[event]) do
                    if v==callback then
                        exists=true;
                        break;
                    end
                end
                if not exists then
                    table.insert(object[event], callback);
                end
            else
                object[event] = {object[event], callback};
            end
        end
    end
    return callback;
end

-- New versions of RemoveCallback() and DoCallbacks() that tolerate removing an event handler from within an event handler:
-- Note: This function can leave empty elements in the callback table.
function _G.RemoveCallback(object, event, callback)
    if (callback == nil) then
        return;
    end
    local handlers = object[event];
    if (handlers == callback) then
        object[event] = nil;
    elseif (type(handlers) == "table") then
        local f, i;
        repeat
            i, f = next(handlers, i);
            if (f == callback) then
                handlers[i] = nil;
            end
        until (i == nil);
        i, f = next(handlers);
        if (i == nil) then
            -- Table is empty; set to nil
            object[event] = nil;
        elseif (next(handlers, i) == nil) then
            -- Table has only one function; replace the table with the function itself
            object[event] = f;
        end
    end
end

function _G.DoCallbacks(object, event, ...)
    local handlers = object[event];
    if (type(handlers) == "function") then
        handlers(object, ...);
    elseif (type(handlers) == "table") then
        if (next(handlers) == nil) then
            -- If all handlers have been removed, remove the table.
            object[event] = nil;
        else
            local f, i;
            repeat
                i, f = next(handlers, i);
                if (type(f) == "function") then
                    f(object, ...);
                end
            until (i == nil);
        end
    end
end