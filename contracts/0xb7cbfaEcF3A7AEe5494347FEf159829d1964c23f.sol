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
    return code.data[306 len 3086]
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
    return sub_1dc0c110[arg1].field_0
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
    emit 0xdc53e94c: factoryContractAddress, arg1
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
    if sub_1dc0c110.length <= 1:
        return 0
    require 1 < sub_1dc0c110.length
    return address(sub_1dc0c110.field_256)
}

function sub_a2690709(?) {
    require arg1
    require msg.sender == arg1
    if not arg2:
        if stor7[address(arg1)] > 0:
            require sub_1dc0c110.length - 1 < sub_1dc0c110.length
            require stor7[address(arg1)] < sub_1dc0c110.length
            sub_1dc0c110[stor7[address(arg1)]].field_0 = sub_1dc0c110[sub_1dc0c110.length].field_0
            require sub_1dc0c110.length - 1 < sub_1dc0c110.length
            stor7[stor6[stor6.length].field_0] = stor7[address(arg1)]
            require sub_1dc0c110.length - 1 < sub_1dc0c110.length
            sub_1dc0c110[sub_1dc0c110.length].field_0 = 0
            stor7[address(arg1)] = 0
    else:
        if not stor7[address(arg1)]:
            sub_1dc0c110.length++
            if not sub_1dc0c110.length <= sub_1dc0c110.length + 1:
                idx = sub_1dc0c110.length + 1
                while sub_1dc0c110.length > idx:
                    sub_1dc0c110[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            sub_1dc0c110[sub_1dc0c110.length].field_0 = arg1
            stor7[address(arg1)] = sub_1dc0c110.length - 1
        else:
            if not arg2:
                if stor7[address(arg1)] > 0:
                    require sub_1dc0c110.length - 1 < sub_1dc0c110.length
                    require stor7[address(arg1)] < sub_1dc0c110.length
                    sub_1dc0c110[stor7[address(arg1)]].field_0 = sub_1dc0c110[sub_1dc0c110.length].field_0
                    require sub_1dc0c110.length - 1 < sub_1dc0c110.length
                    stor7[stor6[stor6.length].field_0] = stor7[address(arg1)]
                    require sub_1dc0c110.length - 1 < sub_1dc0c110.length
                    sub_1dc0c110[sub_1dc0c110.length].field_0 = 0
                    stor7[address(arg1)] = 0
}

function sub_25d31360(?) {
    require arg1
    require msg.sender == arg1
    if not arg2:
        if stor3[address(arg1)] > 0:
            require sub_a10754b0.length - 1 < sub_a10754b0.length
            require stor3[address(arg1)] < sub_a10754b0.length
            address(sub_a10754b0[stor3[address(arg1)]]) = address(sub_a10754b0[sub_a10754b0.length])
            require sub_a10754b0.length - 1 < sub_a10754b0.length
            stor3[address(stor2[stor2.length])] = stor3[address(arg1)]
            require sub_a10754b0.length - 1 < sub_a10754b0.length
            address(sub_a10754b0[sub_a10754b0.length]) = 0
            stor3[address(arg1)] = 0
    else:
        if not stor3[address(arg1)]:
            sub_a10754b0.length++
            if not sub_a10754b0.length <= sub_a10754b0.length + 1:
                idx = sub_a10754b0.length + 1
                while sub_a10754b0.length > idx:
                    uint256(sub_a10754b0[idx]) = 0
                    idx = idx + 1
                    continue 
            address(sub_a10754b0[sub_a10754b0.length]) = arg1
            stor3[address(arg1)] = sub_a10754b0.length - 1
        else:
            if not arg2:
                if stor3[address(arg1)] > 0:
                    require sub_a10754b0.length - 1 < sub_a10754b0.length
                    require stor3[address(arg1)] < sub_a10754b0.length
                    address(sub_a10754b0[stor3[address(arg1)]]) = address(sub_a10754b0[sub_a10754b0.length])
                    require sub_a10754b0.length - 1 < sub_a10754b0.length
                    stor3[address(stor2[stor2.length])] = stor3[address(arg1)]
                    require sub_a10754b0.length - 1 < sub_a10754b0.length
                    address(sub_a10754b0[sub_a10754b0.length]) = 0
                    stor3[address(arg1)] = 0
}

function sub_4b406c0b(?) {
    require arg1
    if arg1 != msg.sender:
        require factoryContractAddress == msg.sender
    if not arg2:
        if stor5[address(arg1)] > 0:
            require sub_18b9f6d4.length - 1 < sub_18b9f6d4.length
            require stor5[address(arg1)] < sub_18b9f6d4.length
            address(sub_18b9f6d4[stor5[address(arg1)]]) = address(sub_18b9f6d4[sub_18b9f6d4.length])
            require sub_18b9f6d4.length - 1 < sub_18b9f6d4.length
            stor5[address(stor4[stor4.length])] = stor5[address(arg1)]
            require sub_18b9f6d4.length - 1 < sub_18b9f6d4.length
            address(sub_18b9f6d4[sub_18b9f6d4.length]) = 0
            stor5[address(arg1)] = 0
    else:
        if not stor5[address(arg1)]:
            sub_18b9f6d4.length++
            if not sub_18b9f6d4.length <= sub_18b9f6d4.length + 1:
                idx = sub_18b9f6d4.length + 1
                while sub_18b9f6d4.length > idx:
                    uint256(sub_18b9f6d4[idx]) = 0
                    idx = idx + 1
                    continue 
            address(sub_18b9f6d4[sub_18b9f6d4.length]) = arg1
            stor5[address(arg1)] = sub_18b9f6d4.length - 1
        else:
            if not arg2:
                if stor5[address(arg1)] > 0:
                    require sub_18b9f6d4.length - 1 < sub_18b9f6d4.length
                    require stor5[address(arg1)] < sub_18b9f6d4.length
                    address(sub_18b9f6d4[stor5[address(arg1)]]) = address(sub_18b9f6d4[sub_18b9f6d4.length])
                    require sub_18b9f6d4.length - 1 < sub_18b9f6d4.length
                    stor5[address(stor4[stor4.length])] = stor5[address(arg1)]
                    require sub_18b9f6d4.length - 1 < sub_18b9f6d4.length
                    address(sub_18b9f6d4[sub_18b9f6d4.length]) = 0
                    stor5[address(arg1)] = 0
}



}
