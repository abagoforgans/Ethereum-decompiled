contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[5023 len 32]
    return code.data[99 len 4924]
}



// =====================  Runtime code  =====================


address stor0;
uint256 delay;
mapping of uint256 balances;
mapping of address sub_a34dbf91;

function balances(address arg1) payable {
    return balances[arg1]
}

function delay() payable {
    return delay
}

function sub_a34dbf91(?) payable {
    return address(sub_a34dbf91[arg1])
}

function sub_e2f15b95(?) payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function store(address arg1) payable {
    balances[address(arg1)] += msg.value
    emit Stored(address(arg1), msg.value);
}

function _fallback() payable {
    if address(sub_a34dbf91[address(msg.sender)]):
        balances[address(stor3[address(msg.sender)])] += msg.value
        address(sub_a34dbf91[address(msg.sender)]) = 0
}

function cancelTransfer(address arg1) payable {
    if msg.sender == address(sub_a34dbf91[address(arg1)]):
        call arg1.cancel() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        emit 0x389b49de: address(sub_a34dbf91[address(arg1)]), arg1
}

function sub_ec03763d(?) payable {
    if msg.sender == address(sub_a34dbf91[address(arg1)]):
        call arg1.0xfe65b36 with:
             gas gas_remaining - 25050 wei
            args arg2
        require ext_call.success
        emit 0xcc8c60dd: address(sub_a34dbf91[address(arg1)]), arg1
}

function transfer(address arg1, uint256 arg2) payable {
    if balances[address(msg.sender)] < arg2:
        return 0
    create contract with 0 wei
                    code: code.data[2296 len 2628], address(this.address), address(arg1), block.timestamp + delay
    uint256(sub_a34dbf91[address(create.new_address)]) = msg.sender or Mask(96, 160, uint256(sub_a34dbf91[address(create.new_address)]))
    balances[address(msg.sender)] -= arg2
    call address(create.new_address) with:
       value arg2 wei
         gas 0 wei
    emit 0x16aa0b27: msg.sender, address(create.new_address)
    return address(create.new_address)
}



}
