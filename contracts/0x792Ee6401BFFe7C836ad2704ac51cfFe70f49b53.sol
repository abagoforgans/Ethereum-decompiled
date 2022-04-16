contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[2342 len 32]
    stor2 = code.data[2374 len 32]
    return code.data[101 len 2241]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address stor0;
uint256 sub_309a536d;
uint256 sub_a6a2fcbc;
mapping of struct sub_c4b7ebbf;

function sub_309a536d(?) {
    return sub_309a536d
}

function sub_a6a2fcbc(?) {
    return sub_a6a2fcbc
}

function sub_c4b7ebbf(?) {
    return sub_c4b7ebbf[address(msg.sender)].field_256
}

function _fallback() payable {
    emit Log(Array(len=24, data='Fallback function called'));
}

function sub_fae87048(?) payable {
    if msg.value < sub_a6a2fcbc * sub_309a536d:
        emit Log(Array(len=49, data='Account does not have enough to ', 'pay for all users'));
}

function sub_60e6d25f(?) {
    if sub_c4b7ebbf[address(msg.sender)].field_0:
        return 1
    sub_c4b7ebbf[address(msg.sender)].field_0 = 1
    emit 0x4a5af96f: msg.sender, stor0
    return 0
}

function cashOut() {
    require sub_c4b7ebbf[address(msg.sender)].field_0
    call msg.sender with:
       value sub_c4b7ebbf[address(msg.sender)].field_256 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    sub_c4b7ebbf[address(msg.sender)].field_256 = 0
}

function withdrawAll() {
    require stor0 == msg.sender
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0x80141949: stor0, Array(len=31, data='Withdrew all money in account: '), eth.balance(this.address)
}

function sub_7d5f683b(?) {
    require 0x8be53c228408c549396d3b167eeac69c9ec7dec3 == msg.sender
    if not sub_c4b7ebbf[address(arg1)].field_0:
        emit 0x1b091239: address(arg1), stor0, 128, 0, 23, 'Failed: Invalid address'
    else:
        if not sub_309a536d:
            emit 0x1b091239: address(arg1), stor0, 128, 0, 41, 'Failed: No more actions left to ', 'complete!'
        else:
            if eth.balance(this.address) < sub_a6a2fcbc:
                emit 0x1b091239: address(arg1), stor0, Array(len=44, data='Failed: Not enough money to send', ' to marketer'), eth.balance(this.address)
            sub_c4b7ebbf[address(arg1)].field_256 += sub_a6a2fcbc
            sub_309a536d--
            emit 0x1b091239: address(arg1), stor0, Array(len=arg2.length, data=arg2[all]), sub_a6a2fcbc
}



}
