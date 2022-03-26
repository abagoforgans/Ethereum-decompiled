contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    stor2 = 0
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 100
    stor8 = 200
    stor9 = 0
    return code.data[86 len 1347]
}



// =====================  Runtime code  =====================


address longAddress;
address shortAddress;
address updaterAddress;
uint256 sub_666ee1b3;
uint256 sub_f855c2b2;
uint256 sub_1e007936;
uint256 sub_67b3d32f;
uint256 sub_b8ab32a7;
uint256 sub_271d1386;
uint256 sub_c4a91ed1;

function long() {
    return longAddress
}

function sub_1e007936(?) {
    return sub_1e007936
}

function sub_271d1386(?) {
    return sub_271d1386
}

function short() {
    return shortAddress
}

function sub_666ee1b3(?) {
    return sub_666ee1b3
}

function sub_67b3d32f(?) {
    return sub_67b3d32f
}

function sub_b8ab32a7(?) {
    return sub_b8ab32a7
}

function sub_c4a91ed1(?) {
    return sub_c4a91ed1
}

function updater() {
    return updaterAddress
}

function sub_f855c2b2(?) {
    return sub_f855c2b2
}

function _fallback() payable {
    revert 
}

function sub_24ad6ca6(?) {
    if longAddress != msg.sender:
        require shortAddress == msg.sender
    sub_c4a91ed1 = 1
}

function GetBalance() {
    require msg.value <= 0
    if longAddress == msg.sender:
        return sub_1e007936
    require shortAddress == msg.sender
    return sub_67b3d32f
}

function sub_bed61e9f(?) {
    if longAddress == msg.sender:
        sub_1e007936 += msg.value
    else:
        require shortAddress == msg.sender
        sub_67b3d32f += msg.value
}

function sub_4407669c(?) {
    require longAddress
    require not shortAddress
    require msg.value >= sub_f855c2b2 * sub_271d1386
    shortAddress = msg.sender
    sub_67b3d32f = msg.value
}

function sub_3adb843b(?) {
    require not longAddress
    require not shortAddress
    require msg.value >= arg2 * sub_271d1386
    sub_f855c2b2 = arg2
    longAddress = msg.sender
    shortAddress = 0
    updaterAddress = arg1
    sub_1e007936 = msg.value
    sub_67b3d32f = 0
    sub_666ee1b3 = arg3
}

function sub_ca8bcec9(?) {
    require sub_c4a91ed1
    if shortAddress != msg.sender:
        if longAddress != msg.sender:
        sub_1e007936 = 0
        call shortAddress with:
           value sub_67b3d32f wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
    else:
        sub_67b3d32f = 0
        call shortAddress with:
             gas 2300 wei
        if ext_call.success:
            if longAddress != msg.sender:
            sub_1e007936 = 0
            call shortAddress with:
               value sub_67b3d32f wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
    revert 
}

function sub_6932278f(?) {
    require sub_c4a91ed1 != 1
    if updaterAddress == msg.sender:
        sub_666ee1b3 = arg1
        sub_1e007936 = (arg1 * sub_f855c2b2) - (sub_666ee1b3 * sub_f855c2b2) + sub_1e007936
        sub_67b3d32f = sub_67b3d32f - (arg1 * sub_f855c2b2) + (sub_666ee1b3 * sub_f855c2b2)
        if (arg1 * sub_f855c2b2) - (sub_666ee1b3 * sub_f855c2b2) + sub_1e007936 < sub_f855c2b2 * sub_b8ab32a7:
            sub_c4a91ed1 = 1
            if sub_1e007936 < 0:
                sub_67b3d32f += sub_1e007936
                sub_1e007936 = 0
            else:
                if sub_67b3d32f < 0:
                    sub_1e007936 += sub_67b3d32f
                    sub_67b3d32f = 0
        else:
            if sub_67b3d32f < sub_b8ab32a7 * sub_f855c2b2:
                sub_c4a91ed1 = 1
                if sub_1e007936 < 0:
                    sub_67b3d32f += sub_1e007936
                    sub_1e007936 = 0
                else:
                    if sub_67b3d32f < 0:
                        sub_1e007936 += sub_67b3d32f
                        sub_67b3d32f = 0
}



}
