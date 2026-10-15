
function Update_FestivalBuddySettings_from_v22_to_v23(settings)
    local progressByFestival = settings.QUICK_GUIDE_PROGRESS;

    for festival, festivalProgress in pairs(progressByFestival) do
        local guideIndicesById = _G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_INDICIES[festival];
        for guideId, guideProgress in pairs(festivalProgress) do
            local guideIndices = guideIndicesById and guideIndicesById[guideId];
            local progressByEntryKey = {};

            for entryIndex, value in pairs(guideProgress) do
                local entryKey = entryIndex;
                if (type(entryIndex) == "number") then
                    entryKey = nil;
                    if (guideIndices) then
                        for candidateKey, candidateIndex in pairs(guideIndices) do
                            if (candidateIndex == entryIndex) then
                                entryKey = candidateKey;
                                break;
                            end
                        end
                    end
                    if (not entryKey) then
                        Turbine.Shell.WriteLine("Could not migrate quick guide progress for "
                            .. festival .. " guide " .. tostring(guideId) .. " index " .. tostring(entryIndex));
                    end
                end

                if (entryKey) then
                    progressByEntryKey[entryKey] = value;
                end
            end

            festivalProgress[guideId] = progressByEntryKey;
        end
    end
end
