-- ==============================================================================
-- No More Invasion Spam: Smart AI
-- Overrides vanilla AI naval invasion defines to stop 1-division suicide spam,
-- force 180-day strategic cooldowns on failed targets, and mandate fully prepared,
-- well-organized amphibious operations.
-- Compatible with HOI4 v1.19.*
-- ==============================================================================

-- Preparation & Cooldown Logic
NDefines.NAI.NAVAL_INVASION_PREPARE_DAYS = 120                      -- Base preparation days required (vanilla: 60)
NDefines.NAI.FAILED_INVASION_AVOID_DURATION = 180                   -- AI avoids retrying a failed landing zone for 180 days / 6 months (vanilla: 60)
NDefines.NAI.FAILED_INVASION_AREA_PRIO_FACTOR = 0.05                -- Heavy penalty multiplier for failing an invasion in a coastal area (vanilla: 0.5)
NDefines.NAI.FAILED_INVASION_PORT_PRIO_FACTOR = 0.05                -- Heavy penalty multiplier for failing at a specific target port (vanilla: 0.66)

-- Execution Thresholds (Calculated, Serious Attacks Only)
NDefines.NAI.MIN_INVASION_PLAN_VALUE_TO_EXECUTE = 0.75              -- AI requires at least 75% plan preparation score before launching (vanilla: 0.30)
NDefines.NAI.MIN_INVASION_ORG_FACTOR_TO_EXECUTE = 0.85              -- Assigned units must be at >=85% average organization before launching (vanilla: 0.40)
NDefines.NAI.MIN_INVASION_UNITS_READY_TO_EXECUTE = 0.80            -- AI requires at least 80% of assigned units to be fully prepared (vanilla: 0.25)
NDefines.NAI.INVASION_UNITS_READY_AT_MIN_PLAN = 0.90               -- Required readiness ratio when plan value is minimal (vanilla: 0.75)
NDefines.NAI.INVASION_UNITS_READY_AT_MAX_PLAN = 0.75               -- Required readiness ratio when plan value is maximal (vanilla: 0.25)

-- Anti-Spam & Concentration Rules
NDefines.NAI.INVASION_COASTAL_PROVS_PER_ORDER = 60                 -- Prevents AI from creating dozens of 1-province micro invasion orders (vanilla: 24)
NDefines.NAI.MAX_UNITS_FACTOR_INVASION_ORDER = 1.5                 -- Increases unit weighting for invasion orders (vanilla: 1.0)
NDefines.NAI.DESIRED_UNITS_FACTOR_INVASION_ORDER = 1.5              -- Desired unit allocation per invasion task force (vanilla: 1.0)
NDefines.NAI.MIN_UNITS_FACTOR_INVASION_ORDER = 1.2                 -- Minimum unit factor required for invasion orders (vanilla: 1.0)

-- Strategic Naval Supremacy Assessment
NDefines.NAI.ENEMY_NAVY_STRENGTH_DONT_BOTHER = 1.5                 -- AI refrains from launching invasions if enemy naval superiority exceeds 1.5x (vanilla: 2.5)
