contract main {




// =====================  Runtime code  =====================


uint8 stor0;
mapping of uint8 stor1;
mapping of address stor2;
array of address stor3;
address stor4;
address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isContract(address arg1) {
    return (ext_code.size(arg1) > 0)
}

function sub_71c74e17(?) {
    if not stor0:
        if owner != arg1:
            require stor4 == arg1
    return 1
}

function finishInit() {
    if not stor0:
        if owner != msg.sender:
            require stor4 == msg.sender
    stor0 = 0
}

function sub_8997be9c(?) {
    if bool(stor1[address(arg1)]) != 1:
        if owner != arg1:
            require stor4 == arg1
    return 1
}

function sub_334e16e9(?) {
    if not stor0:
        if owner != msg.sender:
            require stor4 == msg.sender
    stor1[address(arg1)] = 1
}

function sub_708f4106(?) {
    if not stor0:
        if owner != msg.sender:
            require stor4 == msg.sender
    stor1[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    if not stor0:
        if owner != msg.sender:
            require stor4 == msg.sender
    require arg1
    owner = arg1
}

function getAllowance(address arg1) {
    if bool(stor1[address(msg.sender)]) != 1:
        if owner != msg.sender:
            require stor4 == msg.sender
    if stor2[address(arg1)]:
        require ext_code.size(stor2[address(arg1)]) <= 0
        return stor2[address(arg1)]
    require ext_code.size(arg1) <= 0
    return arg1
}

function sub_7c562a54(?) {
    mem[96 len 320] = code.data[2244 len 320]
    if bool(stor1[address(msg.sender)]) != 1:
        if owner != msg.sender:
            require stor4 == msg.sender
    idx = 0
    while idx < uint256(stor3[address(arg1)]):
        require idx < uint256(stor3[address(arg1)])
        require idx < 10
        mem[(32 * idx) + 96] = address(stor3[address(arg1)][idx])
        mem[0] = arg1
        mem[32] = 3
        idx = idx + 1
        continue 
    return memory
      from 96
       len 320
}

function sub_527ae7a7(?) {
    require ext_code.size(arg2) <= 0
    if bool(stor1[address(msg.sender)]) != 1:
        if owner != msg.sender:
            require stor4 == msg.sender
    require 10 >= uint256(stor3[address(arg1)])
    if not stor2[address(arg1)]:
        stor2[address(arg1)] = arg1
    if not stor2[address(arg2)]:
        require stor2[address(arg1)] == arg1
        stor2[address(arg2)] = arg1
        uint256(stor3[address(arg1)])++
        address(stor3[address(arg1)][uint256(stor3[address(arg1)])]) = arg2
}

function sub_51045da8(?) {
    if bool(stor1[address(msg.sender)]) != 1:
        if owner != msg.sender:
            require stor4 == msg.sender
    require stor2[address(arg1)] == arg1
    stor2[address(arg2)] = 0
    mem[0] = arg1
    idx = 0
    while idx < uint256(stor3[address(arg1)]):
        require idx < uint256(stor3[address(arg1)])
        if address(stor3[address(arg1)][idx]) != arg2:
            mem[0] = arg1
            mem[32] = 3
            idx = idx + 1
            continue 
        if idx < uint256(stor3[address(arg1)]) - 1:
            require uint256(stor3[address(arg1)]) - 1 < uint256(stor3[address(arg1)])
            require idx < uint256(stor3[address(arg1)])
            address(stor3[address(arg1)][idx]) = address(stor3[address(arg1)][uint256(stor3[address(arg1)])])
        uint256(stor3[address(arg1)])--
        if uint256(stor3[address(arg1)]) > uint256(stor3[address(arg1)]) - 1:
            mem[0] = sha3(address(arg1), 3)
            idx = uint256(stor3[address(arg1)]) + sha3(mem[0]) - 1
            while sha3(sha3(address(arg1), 3)) + uint256(stor3[address(arg1)]) > idx:
                stor[idx] = 0
                mem[0] = arg1
                mem[32] = 3
                idx = idx + 1
                continue 
}



}
