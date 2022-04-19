contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;
array of uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor2 = 0x79056e9bb24f897d7f885dacdb2d506599944c0cdfd6b7495eb7f3ea624ac5af
    require not msg.value
    mem[96 len -1435] = code.data[1766 len -1435]
    mem[64] = -1339
    stor0 = block.timestamp
    stor1 = msg.sender
    stor4[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor5 = mem[128]
    return code.data[331 len 1435]
}



// =====================  Runtime code  =====================


uint256 createdAt;
address stor1;
uint256 interfaceID;
address nextAddress;
array of uint256 word;
uint256 design;

function word() {
    return word[0 len word.length]
}

function next() {
    return nextAddress
}

function design() {
    return design
}

function interfaceID() {
    require stor1 == msg.sender
    return interfaceID
}

function createdAt() {
    return createdAt
}

function kill() {
    require stor1 == msg.sender
    selfdestruct(stor1)
}

function _fallback() payable {
    revert
}

function transferOwnershipTo(address arg1) {
    require stor1 == msg.sender
    stor1 = arg1
}

function append(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require stor1 == msg.sender
    require ext_code.size(arg1)
    call arg1.0xba19322d with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] == interfaceID
    if not nextAddress:
        nextAddress = arg1
    else:
        mem[128] = 0
        mem[96] = 0x4c8fe52600000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(var20001))
        call var22001.mem[var22003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var22003 + 4 len var22004 - 4]
        require ext_call.success
        require ext_code.size(address(var24005))
        call address(var24005).0xac04f5a7 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
}



}
