contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor1 = code.data[10421 len 20]
    stor2 = code.data[10441 len 32]
    return code.data[231 len 10178]
}



// =====================  Runtime code  =====================


#
#  - sub_1b093566(?)
#  - sub_30266537(?)
#
uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address sub_92556147Address;
uint256 sub_33d4da2a;
mapping of struct sub_4bbed29c;
mapping of struct sub_1692c89b;

function sub_1692c89b(?) {
    return sub_1692c89b[address(arg1)].field_256
}

function sub_33d4da2a(?) {
    return sub_33d4da2a
}

function sub_496bd3df(?) {
    mem[160] = sub_1692c89b[address(arg1)].field_0
    idx = 160
    s = 0
    while sub_1692c89b[address(arg1)].length + 128 > idx:
        mem[idx + 32] = sub_1692c89b[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_1692c89b[address(arg1)].length, data=mem[160 len sub_1692c89b[address(arg1)].length]), 
           sub_1692c89b[address(arg1)].field_256,
           sub_1692c89b[address(arg1)].field_512
}

function sub_4bbed29c(?) {
    return sub_4bbed29c[arg1][4][0 len sub_4bbed29c[arg1][4].length].field_0
}

function sub_52dd94cc(?) {
    return sub_1692c89b[address(arg1)][0 len sub_1692c89b[address(arg1)].length].field_0
}

function getProvider(address arg1) {
    return sub_1692c89b[address(arg1)].field_512
}

function stopped() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function sub_92556147(?) {
    return sub_92556147Address
}

function sub_9e1c466f(?) {
    return sub_4bbed29c[arg1][3][0 len sub_4bbed29c[arg1][3].length].field_0
}

function sub_cddc3b0a(?) {
    require sub_4bbed29c[arg1].field_256 <= 5
    return sub_4bbed29c[arg1].field_256
}

function sub_d543c28d(?) {
    return sub_4bbed29c[arg1][2][0 len sub_4bbed29c[arg1][2].length].field_0
}

function sub_f5923e7e(?) {
    return sub_4bbed29c[arg1].field_0
}

function _fallback() payable {
    revert
}

function sub_af5a02a4(?) {
    require msg.sender == owner
    sub_33d4da2a = arg1
}

function transferOwnership(address arg1) {
    if msg.sender == owner:
        if arg1:
            owner = arg1
}

function toggleContractActive() {
    if msg.sender == owner:
        Mask(96, 0, stor0.field_160) = Mask(96, 0, not bool(uint8(stor0.field_160)))
}

function emergencyERC20Drain(address arg1, uint256 arg2) {
    if msg.sender == owner:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, arg2
        require ext_call.success
}

function sub_5993ef53(?) {
    require not uint8(stor0.field_160)
    require not sub_1692c89b[address(msg.sender)].field_512
    require tx.origin != msg.sender
    sub_1692c89b[address(msg.sender)].field_512 = tx.origin
    sub_1692c89b[address(msg.sender)].field_256 = arg1
    sub_1692c89b[address(msg.sender)][].field_0 = Array(len=arg2.length, data=arg2[all])
    emit 0xaf5012f1: arg1, Array(len=arg2.length, data=arg2[all]), msg.sender, tx.origin
    return 1
}

function submit(string arg1) payable {
    require sub_1692c89b[address(msg.sender)].field_512
    if msg.value < sub_33d4da2a:
        emit Error(1, Array(len=84, data='msg.value needed for submit call', 'back gas is too low. Check the c', 'urrent callbackPrice'));
        revert
    if msg.value >= 10^18:
        emit Error(2, Array(len=80, data='msg.value needed for submit call', 'back gas is too high. Must be lo', 'wer than 1 ether'));
        revert
    require not uint8(stor0.field_160)
    if sub_1692c89b[address(msg.sender)].field_256 > 0:
        require ext_code.size(sub_92556147Address)
        call sub_92556147Address.0xbbc88c5d with:
             gas gas_remaining - 710 wei
            args sub_1692c89b[address(msg.sender)].field_256
        require ext_call.success
        require ext_call.return_data[0]
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0x743a962d: Array(len=arg1.length, data=arg1[all]), tx.origin, msg.sender, sub_1692c89b[address(msg.sender)].field_512
    return 1
}



}
