contract main {


// =======================  Init code  ======================


address stor0;
address stor4;

function _fallback() {
    stor0 = msg.sender
    require code.data[5668 len 20]
    stor4 = code.data[5668 len 20]
    return code.data[133 len 5523]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of address vestingFromContract;
array of address stor3;
address stor4;

function owner() {
    return owner
}

function getVestingFromContract(address arg1, address arg2) {
    emit code.data[5448 len 32]: msg.sender
    require stor1[address(msg.sender)]
    require arg2
    require arg1
    return vestingFromContract[address(arg1)][address(arg2)]
}

function getVesting(address arg1) {
    emit code.data[5448 len 32]: msg.sender
    require stor1[address(msg.sender)]
    require arg1
    return vestingFromContract[address(msg.sender)][address(arg1)]
}

function auth(address arg1) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function unauthorize(address arg1) {
    require owner == msg.sender
    emit Grant(address(arg1), 0);
    stor1[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function authorize(address arg1) {
    require owner == msg.sender
    emit Grant(address(arg1), 1);
    stor1[address(arg1)] = 1
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length + 1
        while stor3.length > idx:
            uint256(stor3[idx]) = 0
            idx = idx + 1
            continue 
    address(stor3[stor3.length]) = arg1
}

function createVesting(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    emit code.data[5448 len 32]: msg.sender
    require stor1[address(msg.sender)]
    emit code.data[5448 len 32]: msg.sender
    require stor1[address(msg.sender)]
    require arg1
    if not vestingFromContract[address(msg.sender)][address(arg1)]:
        create contract with 0 wei
                        code: code.data[2757 len 2691], address(arg1), arg2, arg3, arg4, 1
        require create.new_address
        emit VestingCreated(arg2, arg3, arg4, msg.sender, address(create.new_address), arg1);
        vestingFromContract[address(msg.sender)][address(arg1)] = address(create.new_address)
}

function setValidKYC(address arg1) {
    emit code.data[5448 len 32]: msg.sender
    require stor1[address(msg.sender)]
    s = 0
    s = 0
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = arg1
        mem[32] = sha3(address(stor3[idx]), 2)
        if not vestingFromContract[address(stor3[idx])][address(arg1)]:
            s = vestingFromContract[address(stor3[idx])][address(arg1)]
            s = address(stor3[idx])
            idx = idx + 1
            s = s
            continue 
        mem[128] = 0
        require ext_code.size(vestingFromContract[address(stor3[idx])][address(arg1)])
        call vestingFromContract[address(stor3[idx])][address(arg1)].setValidKYC() with:
             gas gas_remaining - 710 wei
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        s = vestingFromContract[address(stor3[idx])][address(arg1)]
        s = address(stor3[idx])
        idx = idx + 1
        s = s + 1
        continue 
    emit VestingKYCSetted(s, arg1);
    return s
}

function release(address arg1) {
    emit code.data[5448 len 32]: msg.sender
    require stor1[address(msg.sender)]
    s = 0
    s = 0
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = arg1
        mem[32] = sha3(address(stor3[idx]), 2)
        if not vestingFromContract[address(stor3[idx])][address(arg1)]:
            s = vestingFromContract[address(stor3[idx])][address(arg1)]
            s = address(stor3[idx])
            idx = idx + 1
            s = s
            continue 
        mem[96] = 0x1916558700000000000000000000000000000000000000000000000000000000
        mem[100] = stor4
        require ext_code.size(vestingFromContract[address(stor3[idx])][address(arg1)])
        call vestingFromContract[address(stor3[idx])][address(arg1)].0x19165587 with:
             gas gas_remaining - 710 wei
            args stor4
        require ext_call.success
        s = vestingFromContract[address(stor3[idx])][address(arg1)]
        s = address(stor3[idx])
        idx = idx + 1
        s = s + 1
        continue 
    emit VestingReleased(s, arg1);
    return s
}



}
