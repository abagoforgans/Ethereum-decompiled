contract main {


// =======================  Init code  ======================


address stor0;
array of address stor2;
array of address stor4;
array of address stor6;

function _fallback() {
    stor0 = msg.sender
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            uint256(stor2[idx]) = 0
            idx = idx + 1
            continue 
    address(stor2[stor2.length]) = 0
    stor6.length++
    if not stor6.length <= stor6.length + 1:
        idx = stor6.length + 1
        while stor6.length > idx:
            uint256(stor6[idx]) = 0
            idx = idx + 1
            continue 
    address(stor6[stor6.length]) = 0
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        idx = stor4.length + 1
        while stor4.length > idx:
            uint256(stor4[idx]) = 0
            idx = idx + 1
            continue 
    address(stor4[stor4.length]) = 0
    return code.data[306 len 2564]
}



// =====================  Runtime code  =====================


address owner;
address factoryContractAddress;
array of address sub_a10754b0;
mapping of uint256 stor3;
array of address sub_18b9f6d4;
mapping of uint256 stor5;
array of address sub_1dc0c110;
mapping of uint256 stor7;

function sub_18b9f6d4(?) {
    require arg1 < sub_18b9f6d4.length
    return address(sub_18b9f6d4[arg1])
}

function sub_1dc0c110(?) {
    require arg1 < sub_1dc0c110.length
    return address(sub_1dc0c110[arg1])
}

function owner() {
    return owner
}

function sub_a10754b0(?) {
    require arg1 < sub_a10754b0.length
    return address(sub_a10754b0[arg1])
}

function factoryContract() {
    return factoryContractAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setFactoryContract(address arg1) {
    require owner == msg.sender
    require arg1
    emit 0xbc011fae: factoryContractAddress, arg1
    factoryContractAddress = arg1
}

function sub_b689c1eb(?) {
    if not arg1:
        return sub_a10754b0.length
    if 1 == arg1:
        return sub_1dc0c110.length
    if arg1 != 2:
        return 0
    return sub_18b9f6d4.length
}

function sub_845ea998(?) {
    require factoryContractAddress == msg.sender
    idx = 1
    while idx < sub_1dc0c110.length:
        mem[0] = 6
        if not address(sub_1dc0c110[idx]):
            idx = idx + 1
            continue 
        require idx < sub_1dc0c110.length
        return address(sub_1dc0c110[idx])
    return 0
}

function sub_25d31360(?) {
    require arg1
    require msg.sender == arg1
    if not arg2:
        if stor3[address(arg1)] > 0:
            require stor3[address(arg1)] < sub_a10754b0.length
            address(sub_a10754b0[stor3[address(arg1)]]) = 0
            stor3[address(arg1)] = 0
    else:
        if stor3[address(arg1)]:
            if not arg2:
                if stor3[address(arg1)] > 0:
                    require stor3[address(arg1)] < sub_a10754b0.length
                    address(sub_a10754b0[stor3[address(arg1)]]) = 0
                    stor3[address(arg1)] = 0
        else:
            sub_a10754b0.length++
            if not sub_a10754b0.length <= sub_a10754b0.length + 1:
                idx = sub_a10754b0.length + 1
                while sub_a10754b0.length > idx:
                    uint256(sub_a10754b0[idx]) = 0
                    idx = idx + 1
                    continue 
            address(sub_a10754b0[sub_a10754b0.length]) = arg1
            stor3[address(arg1)] = sub_a10754b0.length - 1
}

function sub_a2690709(?) {
    require arg1
    require msg.sender == arg1
    if not arg2:
        if stor7[address(arg1)] > 0:
            require stor7[address(arg1)] < sub_1dc0c110.length
            address(sub_1dc0c110[stor7[address(arg1)]]) = 0
            stor7[address(arg1)] = 0
    else:
        if stor7[address(arg1)]:
            if not arg2:
                if stor7[address(arg1)] > 0:
                    require stor7[address(arg1)] < sub_1dc0c110.length
                    address(sub_1dc0c110[stor7[address(arg1)]]) = 0
                    stor7[address(arg1)] = 0
        else:
            sub_1dc0c110.length++
            if not sub_1dc0c110.length <= sub_1dc0c110.length + 1:
                idx = sub_1dc0c110.length + 1
                while sub_1dc0c110.length > idx:
                    uint256(sub_1dc0c110[idx]) = 0
                    idx = idx + 1
                    continue 
            address(sub_1dc0c110[sub_1dc0c110.length]) = arg1
            stor7[address(arg1)] = sub_1dc0c110.length - 1
}

function sub_4b406c0b(?) {
    require arg1
    if arg1 != msg.sender:
        require factoryContractAddress == msg.sender
    if not arg2:
        if stor5[address(arg1)] > 0:
            require stor5[address(arg1)] < sub_18b9f6d4.length
            address(sub_18b9f6d4[stor5[address(arg1)]]) = 0
            stor5[address(arg1)] = 0
    else:
        if stor5[address(arg1)]:
            if not arg2:
                if stor5[address(arg1)] > 0:
                    require stor5[address(arg1)] < sub_18b9f6d4.length
                    address(sub_18b9f6d4[stor5[address(arg1)]]) = 0
                    stor5[address(arg1)] = 0
        else:
            sub_18b9f6d4.length++
            if not sub_18b9f6d4.length <= sub_18b9f6d4.length + 1:
                idx = sub_18b9f6d4.length + 1
                while sub_18b9f6d4.length > idx:
                    uint256(sub_18b9f6d4[idx]) = 0
                    idx = idx + 1
                    continue 
            address(sub_18b9f6d4[sub_18b9f6d4.length]) = arg1
            stor5[address(arg1)] = sub_18b9f6d4.length - 1
}



}
