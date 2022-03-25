contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[36 len 12026]
}



// =====================  Runtime code  =====================


mapping of uint256 accountBalances;
address owner;
uint256 stor1;
mapping of struct state;
address sellerAddress;
uint256 stor3;
address collectorAddress;
uint256 stor4;
uint256 creationFee;

function seller() payable {
    return address(sellerAddress)
}

function getState(address arg1) payable {
    return state[address(arg1)].field_0
}

function sub_2709473b(?) payable {
    return state[address(arg1)].field_72
}

function accountBalances(address arg1) payable {
    return accountBalances[arg1]
}

function requests(address arg1) payable {
    return state[arg1].field_0, state[arg1].field_8 << 192, state[arg1].field_72
}

function owner() payable {
    return address(owner)
}

function collector() payable {
    return address(collectorAddress)
}

function sub_99cc29ba(?) payable {
    return (state[address(arg1)].field_8 << 192)
}

function creationFee() payable {
    return creationFee
}

function sub_05f7fb61(?) payable {
    accountBalances[address(arg1)] += msg.value
}

function transferOwner(address arg1) payable {
    require msg.sender == address(owner)
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function sub_2af16761(?) payable {
    uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
    uint256(stor3) = arg2 or Mask(96, 160, uint256(stor3))
    creationFee = arg3
}

function transferAccount(address arg1, uint256 arg2) payable {
    require arg2 >= accountBalances[address(msg.sender)]
    accountBalances[address(msg.sender)] -= arg2
    accountBalances[arg1] += arg2
}

function sub_5a14ac89(?) payable {
    require address(owner) == msg.sender
    state[address(arg1)].field_0 = 1
    state[address(arg1)].field_8 = arg2
    state[address(arg1)].field_72 = 0
    state[address(arg1)].field_256 = 0
    state[address(arg1)].field_256 = 0
    emit 0x98a2e954: address(arg1), Mask(64, 192, arg2), uint64(block.timestamp)
}

function _fallback() payable {
    require state[address(msg.sender)].field_0 != 0
    accountBalances[address(msg.sender)] += msg.value
    if accountBalances[address(msg.sender)] >= creationFee:
        if 1 == state[address(msg.sender)].field_0:
            state[address(msg.sender)].field_0 = 2
            emit 0xdfebd21c: msg.sender, 0, uint64(block.timestamp)
}

function sub_765cef21(?) payable {
    require state[address(call.data[4])].field_0 == 2
    require state[address(call.data[4])].field_8 << 192 == Mask(64, 192, sha3(address(call.data[36]), arg3, arg4, arg5, arg6, arg7 << 224, arg8 << 224, arg9, arg10, arg11 % 16777216))
    create contract with 0 wei
                    code: code.data[3094 len 8932], address(this.address), address(this.address), arg3, arg9, arg10, arg11 << 232, 0
    state[address(call.data[4])].field_72 = Mask(184, 0, create.new_address)
    call state[address(call.data[4])].field_72.0x11b0e34f with:
         gas gas_remaining - 25050 wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length], arg2.length, call.data[arg2 + 36 len 32 * arg2.length]), (32 * arg1.length) + 128, address(call.data[68])
    require ext_call.success
    call state[address(call.data[4])].field_72.0xa93dae54 with:
         gas gas_remaining - 25050 wei
        args arg4, arg5, arg6, arg7 << 224, arg8
    if 0 == address(call.data[100]):
        call state[address(call.data[4])].field_72.0x3b67ff0d with:
             gas gas_remaining - 25050 wei
            args address(call.data[36])
        require ext_call.success
    else:
        call state[address(call.data[4])].field_72.0x63c3cc16 with:
             gas gas_remaining - 25050 wei
            args address(call.data[100]), 0
        require ext_call.success
        call state[address(call.data[4])].field_72.0x3b67ff0d with:
             gas gas_remaining - 25050 wei
            args address(call.data[36])
    call state[address(call.data[4])].field_72.0x26bfe209 with:
         gas gas_remaining - 25050 wei
        args address(call.data[4])
    call state[address(call.data[4])].field_72.0x4fb2e45d with:
         gas gas_remaining - 25050 wei
        args address(owner)
    accountBalances[address(call.data[4])] = 0
    state[address(call.data[4])].field_0 = 3
    call state[address(call.data[4])].field_72.buyerDeposit() with:
       value accountBalances[address(call.data[4])] wei
         gas gas_remaining - 34050 wei
}



}
