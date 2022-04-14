contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 5743]




// =====================  Runtime code  =====================


address owner;
address executorAddress;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
mapping of uint256 participantsForPreSale;
mapping of uint256 participantsFor1stSale;
mapping of uint256 participantsFor3rdSale;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint256 stor30;
mapping of uint256 participantsForCustomSale;

function participantsForPreSale(address arg1) {
    return participantsForPreSale[arg1]
}

function participantsFor3rdSale(address arg1) {
    return participantsFor3rdSale[arg1]
}

function owner() {
    return owner
}

function participantsForCustomSale(uint256 arg1, address arg2) {
    return participantsForCustomSale[arg1][arg2]
}

function participantsFor1stSale(address arg1) {
    return participantsFor1stSale[arg1]
}

function executor() {
    return executorAddress
}

function _fallback() payable {
    revert
}

function cs() {
    return stor25, stor26, stor27, stor28, stor29, stor30
}

function t() {
    return stor18, stor19, stor20, stor21, stor22, stor23, stor24
}

function setOwner(address arg1) {
    if owner:
        require owner == msg.sender
    owner = arg1
}

function s() {
    return stor2, stor3, stor4, stor5, stor6, stor7, stor8, stor9, stor10, stor11, stor12, stor13, stor14
}

function setExecutor(address arg1) {
    if executorAddress:
        if owner != msg.sender:
            require executorAddress == msg.sender
    executorAddress = arg1
}

function setAttrCustom(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    if owner != msg.sender:
        require msg.sender == executorAddress
    stor25 = arg1
    stor26 = arg2
    stor27 = arg3
    stor28 = arg4
    stor29 = 0
    stor30 = 0
    emit LogCustomSale(arg1, arg2, arg3, arg4);
}

function setAttrs(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, uint256 arg11, uint256 arg12) {
    if owner != msg.sender:
        require msg.sender == executorAddress
    stor3 = arg1
    stor4 = arg2
    stor5 = arg3
    stor6 = arg4
    stor7 = arg5
    stor18 = arg6
    stor19 = arg7
    stor20 = arg8
    stor21 = arg9
    stor22 = arg10
    stor23 = arg11
    stor24 = arg12
}

function getToken(address arg1) {
    require msg.sender == owner
    if block.timestamp <= stor19:
        if block.timestamp <= stor21:
            if block.timestamp <= stor23:
                if block.timestamp <= stor26:
                    return 0
                if not participantsForCustomSale[stor25][address(arg1)]:
                    return 0
                require stor30
                require participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30 >= 0
                participantsForCustomSale[stor25][address(arg1)] = 0
                return (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30)
            if not participantsFor3rdSale[address(arg1)]:
                if block.timestamp <= stor26:
                    return 0
                if not participantsForCustomSale[stor25][address(arg1)]:
                    return 0
                require stor30
                require participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30 >= 0
                participantsForCustomSale[stor25][address(arg1)] = 0
                return (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30)
            require stor11
            require participantsFor3rdSale[address(arg1)] * stor6 / stor11 >= 0
            participantsFor3rdSale[address(arg1)] = 0
            if block.timestamp <= stor26:
                return (participantsFor3rdSale[address(arg1)] * stor6 / stor11)
            if not participantsForCustomSale[stor25][address(arg1)]:
                return (participantsFor3rdSale[address(arg1)] * stor6 / stor11)
            require stor30
            require (participantsFor3rdSale[address(arg1)] * stor6 / stor11) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30) >= participantsFor3rdSale[address(arg1)] * stor6 / stor11
            participantsForCustomSale[stor25][address(arg1)] = 0
            return ((participantsFor3rdSale[address(arg1)] * stor6 / stor11) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30))
        if not participantsFor1stSale[address(arg1)]:
            if block.timestamp <= stor23:
                if block.timestamp <= stor26:
                    return 0
                if not participantsForCustomSale[stor25][address(arg1)]:
                    return 0
                require stor30
                require participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30 >= 0
                participantsForCustomSale[stor25][address(arg1)] = 0
                return (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30)
            if not participantsFor3rdSale[address(arg1)]:
                if block.timestamp <= stor26:
                    return 0
                if not participantsForCustomSale[stor25][address(arg1)]:
                    return 0
                require stor30
                require participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30 >= 0
                participantsForCustomSale[stor25][address(arg1)] = 0
                return (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30)
            require stor11
            require participantsFor3rdSale[address(arg1)] * stor6 / stor11 >= 0
            participantsFor3rdSale[address(arg1)] = 0
            if block.timestamp <= stor26:
                return (participantsFor3rdSale[address(arg1)] * stor6 / stor11)
            if not participantsForCustomSale[stor25][address(arg1)]:
                return (participantsFor3rdSale[address(arg1)] * stor6 / stor11)
            require stor30
            require (participantsFor3rdSale[address(arg1)] * stor6 / stor11) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30) >= participantsFor3rdSale[address(arg1)] * stor6 / stor11
            participantsForCustomSale[stor25][address(arg1)] = 0
            return ((participantsFor3rdSale[address(arg1)] * stor6 / stor11) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30))
        require stor9
        require participantsFor1stSale[address(arg1)] * stor4 / stor9 >= 0
        participantsFor1stSale[address(arg1)] = 0
        if block.timestamp <= stor23:
            if block.timestamp <= stor26:
                return (participantsFor1stSale[address(arg1)] * stor4 / stor9)
            if not participantsForCustomSale[stor25][address(arg1)]:
                return (participantsFor1stSale[address(arg1)] * stor4 / stor9)
            require stor30
            require (participantsFor1stSale[address(arg1)] * stor4 / stor9) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30) >= participantsFor1stSale[address(arg1)] * stor4 / stor9
            participantsForCustomSale[stor25][address(arg1)] = 0
            return ((participantsFor1stSale[address(arg1)] * stor4 / stor9) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30))
        if not participantsFor3rdSale[address(arg1)]:
            if block.timestamp <= stor26:
                return (participantsFor1stSale[address(arg1)] * stor4 / stor9)
            if not participantsForCustomSale[stor25][address(arg1)]:
                return (participantsFor1stSale[address(arg1)] * stor4 / stor9)
            require stor30
            require (participantsFor1stSale[address(arg1)] * stor4 / stor9) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30) >= participantsFor1stSale[address(arg1)] * stor4 / stor9
            participantsForCustomSale[stor25][address(arg1)] = 0
            return ((participantsFor1stSale[address(arg1)] * stor4 / stor9) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30))
        require stor11
        require (participantsFor1stSale[address(arg1)] * stor4 / stor9) + (participantsFor3rdSale[address(arg1)] * stor6 / stor11) >= participantsFor1stSale[address(arg1)] * stor4 / stor9
        participantsFor3rdSale[address(arg1)] = 0
        if block.timestamp <= stor26:
            return ((participantsFor1stSale[address(arg1)] * stor4 / stor9) + (participantsFor3rdSale[address(arg1)] * stor6 / stor11))
        if not participantsForCustomSale[stor25][address(arg1)]:
            return ((participantsFor1stSale[address(arg1)] * stor4 / stor9) + (participantsFor3rdSale[address(arg1)] * stor6 / stor11))
        require stor30
        require participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30 >= 0
        participantsForCustomSale[stor25][address(arg1)] = 0
        return ((participantsFor1stSale[address(arg1)] * stor4 / stor9) + (participantsFor3rdSale[address(arg1)] * stor6 / stor11) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30))
    if not participantsForPreSale[address(arg1)]:
        if block.timestamp <= stor21:
            if block.timestamp <= stor23:
                if block.timestamp <= stor26:
                    return 0
                if not participantsForCustomSale[stor25][address(arg1)]:
                    return 0
                require stor30
                require participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30 >= 0
                participantsForCustomSale[stor25][address(arg1)] = 0
                return (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30)
            if not participantsFor3rdSale[address(arg1)]:
                if block.timestamp <= stor26:
                    return 0
                if not participantsForCustomSale[stor25][address(arg1)]:
                    return 0
                require stor30
                require participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30 >= 0
                participantsForCustomSale[stor25][address(arg1)] = 0
                return (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30)
            require stor11
            require participantsFor3rdSale[address(arg1)] * stor6 / stor11 >= 0
            participantsFor3rdSale[address(arg1)] = 0
            if block.timestamp <= stor26:
                return (participantsFor3rdSale[address(arg1)] * stor6 / stor11)
            if not participantsForCustomSale[stor25][address(arg1)]:
                return (participantsFor3rdSale[address(arg1)] * stor6 / stor11)
            require stor30
            require (participantsFor3rdSale[address(arg1)] * stor6 / stor11) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30) >= participantsFor3rdSale[address(arg1)] * stor6 / stor11
            participantsForCustomSale[stor25][address(arg1)] = 0
            return ((participantsFor3rdSale[address(arg1)] * stor6 / stor11) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30))
        if not participantsFor1stSale[address(arg1)]:
            if block.timestamp <= stor23:
                if block.timestamp <= stor26:
                    return 0
                if not participantsForCustomSale[stor25][address(arg1)]:
                    return 0
                require stor30
                require participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30 >= 0
                participantsForCustomSale[stor25][address(arg1)] = 0
                return (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30)
            if not participantsFor3rdSale[address(arg1)]:
                if block.timestamp <= stor26:
                    return 0
                if not participantsForCustomSale[stor25][address(arg1)]:
                    return 0
                require stor30
                require participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30 >= 0
                participantsForCustomSale[stor25][address(arg1)] = 0
                return (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30)
            require stor11
            require participantsFor3rdSale[address(arg1)] * stor6 / stor11 >= 0
            participantsFor3rdSale[address(arg1)] = 0
            if block.timestamp <= stor26:
                return (participantsFor3rdSale[address(arg1)] * stor6 / stor11)
            if not participantsForCustomSale[stor25][address(arg1)]:
                return (participantsFor3rdSale[address(arg1)] * stor6 / stor11)
            require stor30
            require (participantsFor3rdSale[address(arg1)] * stor6 / stor11) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30) >= participantsFor3rdSale[address(arg1)] * stor6 / stor11
            participantsForCustomSale[stor25][address(arg1)] = 0
            return ((participantsFor3rdSale[address(arg1)] * stor6 / stor11) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30))
        require stor9
        require participantsFor1stSale[address(arg1)] * stor4 / stor9 >= 0
        participantsFor1stSale[address(arg1)] = 0
        if block.timestamp <= stor23:
            if block.timestamp <= stor26:
                return (participantsFor1stSale[address(arg1)] * stor4 / stor9)
            if not participantsForCustomSale[stor25][address(arg1)]:
                return (participantsFor1stSale[address(arg1)] * stor4 / stor9)
            require stor30
            require (participantsFor1stSale[address(arg1)] * stor4 / stor9) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30) >= participantsFor1stSale[address(arg1)] * stor4 / stor9
            participantsForCustomSale[stor25][address(arg1)] = 0
            return ((participantsFor1stSale[address(arg1)] * stor4 / stor9) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30))
        if not participantsFor3rdSale[address(arg1)]:
            if block.timestamp <= stor26:
                return (participantsFor1stSale[address(arg1)] * stor4 / stor9)
            if not participantsForCustomSale[stor25][address(arg1)]:
                return (participantsFor1stSale[address(arg1)] * stor4 / stor9)
            require stor30
            require (participantsFor1stSale[address(arg1)] * stor4 / stor9) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30) >= participantsFor1stSale[address(arg1)] * stor4 / stor9
            participantsForCustomSale[stor25][address(arg1)] = 0
            return ((participantsFor1stSale[address(arg1)] * stor4 / stor9) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30))
        require stor11
        require (participantsFor1stSale[address(arg1)] * stor4 / stor9) + (participantsFor3rdSale[address(arg1)] * stor6 / stor11) >= participantsFor1stSale[address(arg1)] * stor4 / stor9
        participantsFor3rdSale[address(arg1)] = 0
        if block.timestamp <= stor26:
            return ((participantsFor1stSale[address(arg1)] * stor4 / stor9) + (participantsFor3rdSale[address(arg1)] * stor6 / stor11))
        if not participantsForCustomSale[stor25][address(arg1)]:
            return ((participantsFor1stSale[address(arg1)] * stor4 / stor9) + (participantsFor3rdSale[address(arg1)] * stor6 / stor11))
        require stor30
        require participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30 >= 0
        participantsForCustomSale[stor25][address(arg1)] = 0
        return ((participantsFor1stSale[address(arg1)] * stor4 / stor9) + (participantsFor3rdSale[address(arg1)] * stor6 / stor11) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30))
    require stor8
    require participantsForPreSale[address(arg1)] * stor3 / stor8 >= 0
    participantsForPreSale[address(arg1)] = 0
    if block.timestamp <= stor21:
        if block.timestamp <= stor23:
            if block.timestamp <= stor26:
                return (participantsForPreSale[address(arg1)] * stor3 / stor8)
            if not participantsForCustomSale[stor25][address(arg1)]:
                return (participantsForPreSale[address(arg1)] * stor3 / stor8)
            require stor30
            require (participantsForPreSale[address(arg1)] * stor3 / stor8) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30) >= participantsForPreSale[address(arg1)] * stor3 / stor8
            participantsForCustomSale[stor25][address(arg1)] = 0
            return ((participantsForPreSale[address(arg1)] * stor3 / stor8) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30))
        if not participantsFor3rdSale[address(arg1)]:
            if block.timestamp <= stor26:
                return (participantsForPreSale[address(arg1)] * stor3 / stor8)
            if not participantsForCustomSale[stor25][address(arg1)]:
                return (participantsForPreSale[address(arg1)] * stor3 / stor8)
            require stor30
            require (participantsForPreSale[address(arg1)] * stor3 / stor8) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30) >= participantsForPreSale[address(arg1)] * stor3 / stor8
            participantsForCustomSale[stor25][address(arg1)] = 0
            return ((participantsForPreSale[address(arg1)] * stor3 / stor8) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30))
        require stor11
        require (participantsForPreSale[address(arg1)] * stor3 / stor8) + (participantsFor3rdSale[address(arg1)] * stor6 / stor11) >= participantsForPreSale[address(arg1)] * stor3 / stor8
        participantsFor3rdSale[address(arg1)] = 0
        if block.timestamp <= stor26:
            return ((participantsForPreSale[address(arg1)] * stor3 / stor8) + (participantsFor3rdSale[address(arg1)] * stor6 / stor11))
        if not participantsForCustomSale[stor25][address(arg1)]:
            return ((participantsForPreSale[address(arg1)] * stor3 / stor8) + (participantsFor3rdSale[address(arg1)] * stor6 / stor11))
        require stor30
        require participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30 >= 0
        participantsForCustomSale[stor25][address(arg1)] = 0
        return ((participantsForPreSale[address(arg1)] * stor3 / stor8) + (participantsFor3rdSale[address(arg1)] * stor6 / stor11) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30))
    if not participantsFor1stSale[address(arg1)]:
        if block.timestamp <= stor23:
            if block.timestamp <= stor26:
                return (participantsForPreSale[address(arg1)] * stor3 / stor8)
            if not participantsForCustomSale[stor25][address(arg1)]:
                return (participantsForPreSale[address(arg1)] * stor3 / stor8)
            require stor30
            require (participantsForPreSale[address(arg1)] * stor3 / stor8) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30) >= participantsForPreSale[address(arg1)] * stor3 / stor8
            participantsForCustomSale[stor25][address(arg1)] = 0
            return ((participantsForPreSale[address(arg1)] * stor3 / stor8) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30))
        if not participantsFor3rdSale[address(arg1)]:
            if block.timestamp <= stor26:
                return (participantsForPreSale[address(arg1)] * stor3 / stor8)
            if not participantsForCustomSale[stor25][address(arg1)]:
                return (participantsForPreSale[address(arg1)] * stor3 / stor8)
            require stor30
            require (participantsForPreSale[address(arg1)] * stor3 / stor8) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30) >= participantsForPreSale[address(arg1)] * stor3 / stor8
            participantsForCustomSale[stor25][address(arg1)] = 0
            return ((participantsForPreSale[address(arg1)] * stor3 / stor8) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30))
        require stor11
        require (participantsForPreSale[address(arg1)] * stor3 / stor8) + (participantsFor3rdSale[address(arg1)] * stor6 / stor11) >= participantsForPreSale[address(arg1)] * stor3 / stor8
        participantsFor3rdSale[address(arg1)] = 0
        if block.timestamp <= stor26:
            return ((participantsForPreSale[address(arg1)] * stor3 / stor8) + (participantsFor3rdSale[address(arg1)] * stor6 / stor11))
        if not participantsForCustomSale[stor25][address(arg1)]:
            return ((participantsForPreSale[address(arg1)] * stor3 / stor8) + (participantsFor3rdSale[address(arg1)] * stor6 / stor11))
        require stor30
        require participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30 >= 0
        participantsForCustomSale[stor25][address(arg1)] = 0
        return ((participantsForPreSale[address(arg1)] * stor3 / stor8) + (participantsFor3rdSale[address(arg1)] * stor6 / stor11) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30))
    require stor9
    require (participantsForPreSale[address(arg1)] * stor3 / stor8) + (participantsFor1stSale[address(arg1)] * stor4 / stor9) >= participantsForPreSale[address(arg1)] * stor3 / stor8
    participantsFor1stSale[address(arg1)] = 0
    if block.timestamp <= stor23:
        if block.timestamp <= stor26:
            return ((participantsForPreSale[address(arg1)] * stor3 / stor8) + (participantsFor1stSale[address(arg1)] * stor4 / stor9))
        if not participantsForCustomSale[stor25][address(arg1)]:
            return ((participantsForPreSale[address(arg1)] * stor3 / stor8) + (participantsFor1stSale[address(arg1)] * stor4 / stor9))
        require stor30
        require participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30 >= 0
        participantsForCustomSale[stor25][address(arg1)] = 0
        return ((participantsForPreSale[address(arg1)] * stor3 / stor8) + (participantsFor1stSale[address(arg1)] * stor4 / stor9) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30))
    if not participantsFor3rdSale[address(arg1)]:
        if block.timestamp <= stor26:
            return ((participantsForPreSale[address(arg1)] * stor3 / stor8) + (participantsFor1stSale[address(arg1)] * stor4 / stor9))
        if not participantsForCustomSale[stor25][address(arg1)]:
            return ((participantsForPreSale[address(arg1)] * stor3 / stor8) + (participantsFor1stSale[address(arg1)] * stor4 / stor9))
        require stor30
        require participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30 >= 0
        participantsForCustomSale[stor25][address(arg1)] = 0
        return ((participantsForPreSale[address(arg1)] * stor3 / stor8) + (participantsFor1stSale[address(arg1)] * stor4 / stor9) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30))
    require stor11
    require participantsFor3rdSale[address(arg1)] * stor6 / stor11 >= 0
    participantsFor3rdSale[address(arg1)] = 0
    if block.timestamp <= stor26:
        return ((participantsForPreSale[address(arg1)] * stor3 / stor8) + (participantsFor1stSale[address(arg1)] * stor4 / stor9) + (participantsFor3rdSale[address(arg1)] * stor6 / stor11))
    if not participantsForCustomSale[stor25][address(arg1)]:
        return ((participantsForPreSale[address(arg1)] * stor3 / stor8) + (participantsFor1stSale[address(arg1)] * stor4 / stor9) + (participantsFor3rdSale[address(arg1)] * stor6 / stor11))
    require stor30
    require participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30 >= 0
    participantsForCustomSale[stor25][address(arg1)] = 0
    return ((participantsForPreSale[address(arg1)] * stor3 / stor8) + (participantsFor1stSale[address(arg1)] * stor4 / stor9) + (participantsFor3rdSale[address(arg1)] * stor6 / stor11) + (participantsForCustomSale[stor25][address(arg1)] * stor28 / stor30))
}

function process(address arg1, uint256 arg2) {
    require msg.sender == owner
    if block.timestamp <= stor18:
        if block.timestamp <= stor20:
            if block.timestamp <= stor21:
                if block.timestamp <= stor22:
                    if block.timestamp > stor23:
                        if block.timestamp <= stor24:
                            if stor14 < stor7:
                                require stor6
                                require 120 * stor11 / stor6 / 100
                                require stor14 + (arg2 / 120 * stor11 / stor6 / 100) >= stor14
                                stor14 += arg2 / 120 * stor11 / stor6 / 100
                                require stor12 + arg2 >= stor12
                                stor12 += arg2
                                require stor14 < 105 * stor7 / 100
                                require stor2 + arg2 >= stor2
                                stor2 += arg2
                                return (arg2 / 120 * stor11 / stor6 / 100)
                    require block.timestamp > stor25
                    require block.timestamp <= stor26
                    require stor29 < stor28
                    if stor27 > 0:
                        require stor29 + (arg2 * stor27) >= stor29
                        stor29 += arg2 * stor27
                        require stor29 < 105 * stor28 / 100
                        require stor2 + arg2 >= stor2
                        stor2 += arg2
                        return (arg2 * stor27)
                    require participantsForCustomSale[stor25][address(arg1)] + arg2 >= participantsForCustomSale[stor25][address(arg1)]
                    participantsForCustomSale[stor25][address(arg1)] += arg2
                    require stor30 + arg2 >= stor30
                    stor30 += arg2
                else:
                    if block.timestamp <= stor23:
                        require participantsFor3rdSale[address(arg1)] + arg2 >= participantsFor3rdSale[address(arg1)]
                        participantsFor3rdSale[address(arg1)] += arg2
                        require stor11 + arg2 >= stor11
                        stor11 += arg2
                    else:
                        if block.timestamp <= stor24:
                            if stor14 < stor7:
                                require stor6
                                require 120 * stor11 / stor6 / 100
                                require stor14 + (arg2 / 120 * stor11 / stor6 / 100) >= stor14
                                stor14 += arg2 / 120 * stor11 / stor6 / 100
                                require stor12 + arg2 >= stor12
                                stor12 += arg2
                                require stor14 < 105 * stor7 / 100
                                require stor2 + arg2 >= stor2
                                stor2 += arg2
                                return (arg2 / 120 * stor11 / stor6 / 100)
                        require block.timestamp > stor25
                        require block.timestamp <= stor26
                        require stor29 < stor28
                        if stor27 > 0:
                            require stor29 + (arg2 * stor27) >= stor29
                            stor29 += arg2 * stor27
                            require stor29 < 105 * stor28 / 100
                            require stor2 + arg2 >= stor2
                            stor2 += arg2
                            return (arg2 * stor27)
                        require participantsForCustomSale[stor25][address(arg1)] + arg2 >= participantsForCustomSale[stor25][address(arg1)]
                        participantsForCustomSale[stor25][address(arg1)] += arg2
                        require stor30 + arg2 >= stor30
                        stor30 += arg2
            else:
                if block.timestamp > stor22:
                    if block.timestamp <= stor23:
                        require participantsFor3rdSale[address(arg1)] + arg2 >= participantsFor3rdSale[address(arg1)]
                        participantsFor3rdSale[address(arg1)] += arg2
                        require stor11 + arg2 >= stor11
                        stor11 += arg2
                    else:
                        if block.timestamp <= stor24:
                            if stor14 < stor7:
                                require stor6
                                require 120 * stor11 / stor6 / 100
                                require stor14 + (arg2 / 120 * stor11 / stor6 / 100) >= stor14
                                stor14 += arg2 / 120 * stor11 / stor6 / 100
                                require stor12 + arg2 >= stor12
                                stor12 += arg2
                                require stor14 < 105 * stor7 / 100
                                require stor2 + arg2 >= stor2
                                stor2 += arg2
                                return (arg2 / 120 * stor11 / stor6 / 100)
                        require block.timestamp > stor25
                        require block.timestamp <= stor26
                        require stor29 < stor28
                        if stor27 > 0:
                            require stor29 + (arg2 * stor27) >= stor29
                            stor29 += arg2 * stor27
                            require stor29 < 105 * stor28 / 100
                            require stor2 + arg2 >= stor2
                            stor2 += arg2
                            return (arg2 * stor27)
                        require participantsForCustomSale[stor25][address(arg1)] + arg2 >= participantsForCustomSale[stor25][address(arg1)]
                        participantsForCustomSale[stor25][address(arg1)] += arg2
                        require stor30 + arg2 >= stor30
                        stor30 += arg2
                else:
                    if stor13 < stor5:
                        require stor4
                        require 120 * stor9 / stor4 / 100
                        require stor13 + (arg2 / 120 * stor9 / stor4 / 100) >= stor13
                        stor13 += arg2 / 120 * stor9 / stor4 / 100
                        require stor10 + arg2 >= stor10
                        stor10 += arg2
                        require stor13 < 105 * stor5 / 100
                        require stor2 + arg2 >= stor2
                        stor2 += arg2
                        return (arg2 / 120 * stor9 / stor4 / 100)
                    if block.timestamp <= stor22:
                        if block.timestamp > stor23:
                            if block.timestamp <= stor24:
                                if stor14 < stor7:
                                    require stor6
                                    require 120 * stor11 / stor6 / 100
                                    require stor14 + (arg2 / 120 * stor11 / stor6 / 100) >= stor14
                                    stor14 += arg2 / 120 * stor11 / stor6 / 100
                                    require stor12 + arg2 >= stor12
                                    stor12 += arg2
                                    require stor14 < 105 * stor7 / 100
                                    require stor2 + arg2 >= stor2
                                    stor2 += arg2
                                    return (arg2 / 120 * stor11 / stor6 / 100)
                        require block.timestamp > stor25
                        require block.timestamp <= stor26
                        require stor29 < stor28
                        if stor27 > 0:
                            require stor29 + (arg2 * stor27) >= stor29
                            stor29 += arg2 * stor27
                            require stor29 < 105 * stor28 / 100
                            require stor2 + arg2 >= stor2
                            stor2 += arg2
                            return (arg2 * stor27)
                        require participantsForCustomSale[stor25][address(arg1)] + arg2 >= participantsForCustomSale[stor25][address(arg1)]
                        participantsForCustomSale[stor25][address(arg1)] += arg2
                        require stor30 + arg2 >= stor30
                        stor30 += arg2
                    else:
                        if block.timestamp <= stor23:
                            require participantsFor3rdSale[address(arg1)] + arg2 >= participantsFor3rdSale[address(arg1)]
                            participantsFor3rdSale[address(arg1)] += arg2
                            require stor11 + arg2 >= stor11
                            stor11 += arg2
                        else:
                            if block.timestamp <= stor24:
                                if stor14 < stor7:
                                    require stor6
                                    require 120 * stor11 / stor6 / 100
                                    require stor14 + (arg2 / 120 * stor11 / stor6 / 100) >= stor14
                                    stor14 += arg2 / 120 * stor11 / stor6 / 100
                                    require stor12 + arg2 >= stor12
                                    stor12 += arg2
                                    require stor14 < 105 * stor7 / 100
                                    require stor2 + arg2 >= stor2
                                    stor2 += arg2
                                    return (arg2 / 120 * stor11 / stor6 / 100)
                            require block.timestamp > stor25
                            require block.timestamp <= stor26
                            require stor29 < stor28
                            if stor27 > 0:
                                require stor29 + (arg2 * stor27) >= stor29
                                stor29 += arg2 * stor27
                                require stor29 < 105 * stor28 / 100
                                require stor2 + arg2 >= stor2
                                stor2 += arg2
                                return (arg2 * stor27)
                            require participantsForCustomSale[stor25][address(arg1)] + arg2 >= participantsForCustomSale[stor25][address(arg1)]
                            participantsForCustomSale[stor25][address(arg1)] += arg2
                            require stor30 + arg2 >= stor30
                            stor30 += arg2
        else:
            if block.timestamp <= stor21:
                require participantsFor1stSale[address(arg1)] + arg2 >= participantsFor1stSale[address(arg1)]
                participantsFor1stSale[address(arg1)] += arg2
                require stor9 + arg2 >= stor9
                stor9 += arg2
            else:
                if block.timestamp > stor22:
                    if block.timestamp <= stor23:
                        require participantsFor3rdSale[address(arg1)] + arg2 >= participantsFor3rdSale[address(arg1)]
                        participantsFor3rdSale[address(arg1)] += arg2
                        require stor11 + arg2 >= stor11
                        stor11 += arg2
                    else:
                        if block.timestamp <= stor24:
                            if stor14 < stor7:
                                require stor6
                                require 120 * stor11 / stor6 / 100
                                require stor14 + (arg2 / 120 * stor11 / stor6 / 100) >= stor14
                                stor14 += arg2 / 120 * stor11 / stor6 / 100
                                require stor12 + arg2 >= stor12
                                stor12 += arg2
                                require stor14 < 105 * stor7 / 100
                                require stor2 + arg2 >= stor2
                                stor2 += arg2
                                return (arg2 / 120 * stor11 / stor6 / 100)
                        require block.timestamp > stor25
                        require block.timestamp <= stor26
                        require stor29 < stor28
                        if stor27 > 0:
                            require stor29 + (arg2 * stor27) >= stor29
                            stor29 += arg2 * stor27
                            require stor29 < 105 * stor28 / 100
                            require stor2 + arg2 >= stor2
                            stor2 += arg2
                            return (arg2 * stor27)
                        require participantsForCustomSale[stor25][address(arg1)] + arg2 >= participantsForCustomSale[stor25][address(arg1)]
                        participantsForCustomSale[stor25][address(arg1)] += arg2
                        require stor30 + arg2 >= stor30
                        stor30 += arg2
                else:
                    if stor13 < stor5:
                        require stor4
                        require 120 * stor9 / stor4 / 100
                        require stor13 + (arg2 / 120 * stor9 / stor4 / 100) >= stor13
                        stor13 += arg2 / 120 * stor9 / stor4 / 100
                        require stor10 + arg2 >= stor10
                        stor10 += arg2
                        require stor13 < 105 * stor5 / 100
                        require stor2 + arg2 >= stor2
                        stor2 += arg2
                        return (arg2 / 120 * stor9 / stor4 / 100)
                    if block.timestamp <= stor22:
                        if block.timestamp > stor23:
                            if block.timestamp <= stor24:
                                if stor14 < stor7:
                                    require stor6
                                    require 120 * stor11 / stor6 / 100
                                    require stor14 + (arg2 / 120 * stor11 / stor6 / 100) >= stor14
                                    stor14 += arg2 / 120 * stor11 / stor6 / 100
                                    require stor12 + arg2 >= stor12
                                    stor12 += arg2
                                    require stor14 < 105 * stor7 / 100
                                    require stor2 + arg2 >= stor2
                                    stor2 += arg2
                                    return (arg2 / 120 * stor11 / stor6 / 100)
                        require block.timestamp > stor25
                        require block.timestamp <= stor26
                        require stor29 < stor28
                        if stor27 > 0:
                            require stor29 + (arg2 * stor27) >= stor29
                            stor29 += arg2 * stor27
                            require stor29 < 105 * stor28 / 100
                            require stor2 + arg2 >= stor2
                            stor2 += arg2
                            return (arg2 * stor27)
                        require participantsForCustomSale[stor25][address(arg1)] + arg2 >= participantsForCustomSale[stor25][address(arg1)]
                        participantsForCustomSale[stor25][address(arg1)] += arg2
                        require stor30 + arg2 >= stor30
                        stor30 += arg2
                    else:
                        if block.timestamp <= stor23:
                            require participantsFor3rdSale[address(arg1)] + arg2 >= participantsFor3rdSale[address(arg1)]
                            participantsFor3rdSale[address(arg1)] += arg2
                            require stor11 + arg2 >= stor11
                            stor11 += arg2
                        else:
                            if block.timestamp <= stor24:
                                if stor14 < stor7:
                                    require stor6
                                    require 120 * stor11 / stor6 / 100
                                    require stor14 + (arg2 / 120 * stor11 / stor6 / 100) >= stor14
                                    stor14 += arg2 / 120 * stor11 / stor6 / 100
                                    require stor12 + arg2 >= stor12
                                    stor12 += arg2
                                    require stor14 < 105 * stor7 / 100
                                    require stor2 + arg2 >= stor2
                                    stor2 += arg2
                                    return (arg2 / 120 * stor11 / stor6 / 100)
                            require block.timestamp > stor25
                            require block.timestamp <= stor26
                            require stor29 < stor28
                            if stor27 > 0:
                                require stor29 + (arg2 * stor27) >= stor29
                                stor29 += arg2 * stor27
                                require stor29 < 105 * stor28 / 100
                                require stor2 + arg2 >= stor2
                                stor2 += arg2
                                return (arg2 * stor27)
                            require participantsForCustomSale[stor25][address(arg1)] + arg2 >= participantsForCustomSale[stor25][address(arg1)]
                            participantsForCustomSale[stor25][address(arg1)] += arg2
                            require stor30 + arg2 >= stor30
                            stor30 += arg2
    else:
        if block.timestamp <= stor19:
            require participantsForPreSale[address(arg1)] + arg2 >= participantsForPreSale[address(arg1)]
            participantsForPreSale[address(arg1)] += arg2
            require stor8 + arg2 >= stor8
            stor8 += arg2
        else:
            if block.timestamp <= stor20:
                if block.timestamp <= stor21:
                    if block.timestamp <= stor22:
                        if block.timestamp > stor23:
                            if block.timestamp <= stor24:
                                if stor14 < stor7:
                                    require stor6
                                    require 120 * stor11 / stor6 / 100
                                    require stor14 + (arg2 / 120 * stor11 / stor6 / 100) >= stor14
                                    stor14 += arg2 / 120 * stor11 / stor6 / 100
                                    require stor12 + arg2 >= stor12
                                    stor12 += arg2
                                    require stor14 < 105 * stor7 / 100
                                    require stor2 + arg2 >= stor2
                                    stor2 += arg2
                                    return (arg2 / 120 * stor11 / stor6 / 100)
                        require block.timestamp > stor25
                        require block.timestamp <= stor26
                        require stor29 < stor28
                        if stor27 > 0:
                            require stor29 + (arg2 * stor27) >= stor29
                            stor29 += arg2 * stor27
                            require stor29 < 105 * stor28 / 100
                            require stor2 + arg2 >= stor2
                            stor2 += arg2
                            return (arg2 * stor27)
                        require participantsForCustomSale[stor25][address(arg1)] + arg2 >= participantsForCustomSale[stor25][address(arg1)]
                        participantsForCustomSale[stor25][address(arg1)] += arg2
                        require stor30 + arg2 >= stor30
                        stor30 += arg2
                    else:
                        if block.timestamp <= stor23:
                            require participantsFor3rdSale[address(arg1)] + arg2 >= participantsFor3rdSale[address(arg1)]
                            participantsFor3rdSale[address(arg1)] += arg2
                            require stor11 + arg2 >= stor11
                            stor11 += arg2
                        else:
                            if block.timestamp <= stor24:
                                if stor14 < stor7:
                                    require stor6
                                    require 120 * stor11 / stor6 / 100
                                    require stor14 + (arg2 / 120 * stor11 / stor6 / 100) >= stor14
                                    stor14 += arg2 / 120 * stor11 / stor6 / 100
                                    require stor12 + arg2 >= stor12
                                    stor12 += arg2
                                    require stor14 < 105 * stor7 / 100
                                    require stor2 + arg2 >= stor2
                                    stor2 += arg2
                                    return (arg2 / 120 * stor11 / stor6 / 100)
                            require block.timestamp > stor25
                            require block.timestamp <= stor26
                            require stor29 < stor28
                            if stor27 > 0:
                                require stor29 + (arg2 * stor27) >= stor29
                                stor29 += arg2 * stor27
                                require stor29 < 105 * stor28 / 100
                                require stor2 + arg2 >= stor2
                                stor2 += arg2
                                return (arg2 * stor27)
                            require participantsForCustomSale[stor25][address(arg1)] + arg2 >= participantsForCustomSale[stor25][address(arg1)]
                            participantsForCustomSale[stor25][address(arg1)] += arg2
                            require stor30 + arg2 >= stor30
                            stor30 += arg2
                else:
                    if block.timestamp > stor22:
                        if block.timestamp <= stor23:
                            require participantsFor3rdSale[address(arg1)] + arg2 >= participantsFor3rdSale[address(arg1)]
                            participantsFor3rdSale[address(arg1)] += arg2
                            require stor11 + arg2 >= stor11
                            stor11 += arg2
                        else:
                            if block.timestamp <= stor24:
                                if stor14 < stor7:
                                    require stor6
                                    require 120 * stor11 / stor6 / 100
                                    require stor14 + (arg2 / 120 * stor11 / stor6 / 100) >= stor14
                                    stor14 += arg2 / 120 * stor11 / stor6 / 100
                                    require stor12 + arg2 >= stor12
                                    stor12 += arg2
                                    require stor14 < 105 * stor7 / 100
                                    require stor2 + arg2 >= stor2
                                    stor2 += arg2
                                    return (arg2 / 120 * stor11 / stor6 / 100)
                            require block.timestamp > stor25
                            require block.timestamp <= stor26
                            require stor29 < stor28
                            if stor27 > 0:
                                require stor29 + (arg2 * stor27) >= stor29
                                stor29 += arg2 * stor27
                                require stor29 < 105 * stor28 / 100
                                require stor2 + arg2 >= stor2
                                stor2 += arg2
                                return (arg2 * stor27)
                            require participantsForCustomSale[stor25][address(arg1)] + arg2 >= participantsForCustomSale[stor25][address(arg1)]
                            participantsForCustomSale[stor25][address(arg1)] += arg2
                            require stor30 + arg2 >= stor30
                            stor30 += arg2
                    else:
                        if stor13 < stor5:
                            require stor4
                            require 120 * stor9 / stor4 / 100
                            require stor13 + (arg2 / 120 * stor9 / stor4 / 100) >= stor13
                            stor13 += arg2 / 120 * stor9 / stor4 / 100
                            require stor10 + arg2 >= stor10
                            stor10 += arg2
                            require stor13 < 105 * stor5 / 100
                            require stor2 + arg2 >= stor2
                            stor2 += arg2
                            return (arg2 / 120 * stor9 / stor4 / 100)
                        if block.timestamp <= stor22:
                            if block.timestamp > stor23:
                                if block.timestamp <= stor24:
                                    if stor14 < stor7:
                                        require stor6
                                        require 120 * stor11 / stor6 / 100
                                        require stor14 + (arg2 / 120 * stor11 / stor6 / 100) >= stor14
                                        stor14 += arg2 / 120 * stor11 / stor6 / 100
                                        require stor12 + arg2 >= stor12
                                        stor12 += arg2
                                        require stor14 < 105 * stor7 / 100
                                        require stor2 + arg2 >= stor2
                                        stor2 += arg2
                                        return (arg2 / 120 * stor11 / stor6 / 100)
                            require block.timestamp > stor25
                            require block.timestamp <= stor26
                            require stor29 < stor28
                            if stor27 > 0:
                                require stor29 + (arg2 * stor27) >= stor29
                                stor29 += arg2 * stor27
                                require stor29 < 105 * stor28 / 100
                                require stor2 + arg2 >= stor2
                                stor2 += arg2
                                return (arg2 * stor27)
                            require participantsForCustomSale[stor25][address(arg1)] + arg2 >= participantsForCustomSale[stor25][address(arg1)]
                            participantsForCustomSale[stor25][address(arg1)] += arg2
                            require stor30 + arg2 >= stor30
                            stor30 += arg2
                        else:
                            if block.timestamp <= stor23:
                                require participantsFor3rdSale[address(arg1)] + arg2 >= participantsFor3rdSale[address(arg1)]
                                participantsFor3rdSale[address(arg1)] += arg2
                                require stor11 + arg2 >= stor11
                                stor11 += arg2
                            else:
                                if block.timestamp <= stor24:
                                    if stor14 < stor7:
                                        require stor6
                                        require 120 * stor11 / stor6 / 100
                                        require stor14 + (arg2 / 120 * stor11 / stor6 / 100) >= stor14
                                        stor14 += arg2 / 120 * stor11 / stor6 / 100
                                        require stor12 + arg2 >= stor12
                                        stor12 += arg2
                                        require stor14 < 105 * stor7 / 100
                                        require stor2 + arg2 >= stor2
                                        stor2 += arg2
                                        return (arg2 / 120 * stor11 / stor6 / 100)
                                require block.timestamp > stor25
                                require block.timestamp <= stor26
                                require stor29 < stor28
                                if stor27 > 0:
                                    require stor29 + (arg2 * stor27) >= stor29
                                    stor29 += arg2 * stor27
                                    require stor29 < 105 * stor28 / 100
                                    require stor2 + arg2 >= stor2
                                    stor2 += arg2
                                    return (arg2 * stor27)
                                require participantsForCustomSale[stor25][address(arg1)] + arg2 >= participantsForCustomSale[stor25][address(arg1)]
                                participantsForCustomSale[stor25][address(arg1)] += arg2
                                require stor30 + arg2 >= stor30
                                stor30 += arg2
            else:
                if block.timestamp <= stor21:
                    require participantsFor1stSale[address(arg1)] + arg2 >= participantsFor1stSale[address(arg1)]
                    participantsFor1stSale[address(arg1)] += arg2
                    require stor9 + arg2 >= stor9
                    stor9 += arg2
                else:
                    if block.timestamp > stor22:
                        if block.timestamp <= stor23:
                            require participantsFor3rdSale[address(arg1)] + arg2 >= participantsFor3rdSale[address(arg1)]
                            participantsFor3rdSale[address(arg1)] += arg2
                            require stor11 + arg2 >= stor11
                            stor11 += arg2
                        else:
                            if block.timestamp <= stor24:
                                if stor14 < stor7:
                                    require stor6
                                    require 120 * stor11 / stor6 / 100
                                    require stor14 + (arg2 / 120 * stor11 / stor6 / 100) >= stor14
                                    stor14 += arg2 / 120 * stor11 / stor6 / 100
                                    require stor12 + arg2 >= stor12
                                    stor12 += arg2
                                    require stor14 < 105 * stor7 / 100
                                    require stor2 + arg2 >= stor2
                                    stor2 += arg2
                                    return (arg2 / 120 * stor11 / stor6 / 100)
                            require block.timestamp > stor25
                            require block.timestamp <= stor26
                            require stor29 < stor28
                            if stor27 > 0:
                                require stor29 + (arg2 * stor27) >= stor29
                                stor29 += arg2 * stor27
                                require stor29 < 105 * stor28 / 100
                                require stor2 + arg2 >= stor2
                                stor2 += arg2
                                return (arg2 * stor27)
                            require participantsForCustomSale[stor25][address(arg1)] + arg2 >= participantsForCustomSale[stor25][address(arg1)]
                            participantsForCustomSale[stor25][address(arg1)] += arg2
                            require stor30 + arg2 >= stor30
                            stor30 += arg2
                    else:
                        if stor13 < stor5:
                            require stor4
                            require 120 * stor9 / stor4 / 100
                            require stor13 + (arg2 / 120 * stor9 / stor4 / 100) >= stor13
                            stor13 += arg2 / 120 * stor9 / stor4 / 100
                            require stor10 + arg2 >= stor10
                            stor10 += arg2
                            require stor13 < 105 * stor5 / 100
                            require stor2 + arg2 >= stor2
                            stor2 += arg2
                            return (arg2 / 120 * stor9 / stor4 / 100)
                        if block.timestamp <= stor22:
                            if block.timestamp > stor23:
                                if block.timestamp <= stor24:
                                    if stor14 < stor7:
                                        require stor6
                                        require 120 * stor11 / stor6 / 100
                                        require stor14 + (arg2 / 120 * stor11 / stor6 / 100) >= stor14
                                        stor14 += arg2 / 120 * stor11 / stor6 / 100
                                        require stor12 + arg2 >= stor12
                                        stor12 += arg2
                                        require stor14 < 105 * stor7 / 100
                                        require stor2 + arg2 >= stor2
                                        stor2 += arg2
                                        return (arg2 / 120 * stor11 / stor6 / 100)
                            require block.timestamp > stor25
                            require block.timestamp <= stor26
                            require stor29 < stor28
                            if stor27 > 0:
                                require stor29 + (arg2 * stor27) >= stor29
                                stor29 += arg2 * stor27
                                require stor29 < 105 * stor28 / 100
                                require stor2 + arg2 >= stor2
                                stor2 += arg2
                                return (arg2 * stor27)
                            require participantsForCustomSale[stor25][address(arg1)] + arg2 >= participantsForCustomSale[stor25][address(arg1)]
                            participantsForCustomSale[stor25][address(arg1)] += arg2
                            require stor30 + arg2 >= stor30
                            stor30 += arg2
                        else:
                            if block.timestamp <= stor23:
                                require participantsFor3rdSale[address(arg1)] + arg2 >= participantsFor3rdSale[address(arg1)]
                                participantsFor3rdSale[address(arg1)] += arg2
                                require stor11 + arg2 >= stor11
                                stor11 += arg2
                            else:
                                if block.timestamp <= stor24:
                                    if stor14 < stor7:
                                        require stor6
                                        require 120 * stor11 / stor6 / 100
                                        require stor14 + (arg2 / 120 * stor11 / stor6 / 100) >= stor14
                                        stor14 += arg2 / 120 * stor11 / stor6 / 100
                                        require stor12 + arg2 >= stor12
                                        stor12 += arg2
                                        require stor14 < 105 * stor7 / 100
                                        require stor2 + arg2 >= stor2
                                        stor2 += arg2
                                        return (arg2 / 120 * stor11 / stor6 / 100)
                                require block.timestamp > stor25
                                require block.timestamp <= stor26
                                require stor29 < stor28
                                if stor27 > 0:
                                    require stor29 + (arg2 * stor27) >= stor29
                                    stor29 += arg2 * stor27
                                    require stor29 < 105 * stor28 / 100
                                    require stor2 + arg2 >= stor2
                                    stor2 += arg2
                                    return (arg2 * stor27)
                                require participantsForCustomSale[stor25][address(arg1)] + arg2 >= participantsForCustomSale[stor25][address(arg1)]
                                participantsForCustomSale[stor25][address(arg1)] += arg2
                                require stor30 + arg2 >= stor30
                                stor30 += arg2
    require stor2 + arg2 >= stor2
    stor2 += arg2
    return 0
}



}
