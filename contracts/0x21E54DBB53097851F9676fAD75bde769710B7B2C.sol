contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;
uint256 stor4;

function _fallback() {
    require not code.data[2488 len 32] % 10
    require code.data[2564 len 20]
    stor4 = code.data[2488 len 32]
    stor3 = code.data[2532 len 20]
    stor0 = code.data[2564 len 20]
    stor2 = msg.sender
    return code.data[170 len 2318]
}



// =====================  Runtime code  =====================


address sub_9989ec5dAddress;
address sub_c537b30bAddress;
address adminAddress;
address coinbaseAddress;
uint256 sub_659f2878;
uint8 stor5;
uint8 stor5; offset 8
uint8 stor5; offset 16
uint8 stor5; offset 24

function sub_255bdc38(?) {
    return bool(uint8(stor5.field_16))
}

function sub_2cecf98f(?) {
    return bool(uint8(stor5.field_0))
}

function sub_4f0de7c7(?) {
    return bool(uint8(stor5.field_8))
}

function sub_5136fdd6(?) {
    return bool(uint8(stor5.field_24))
}

function sub_659f2878(?) {
    return sub_659f2878
}

function sub_9989ec5d(?) {
    return sub_9989ec5dAddress
}

function coinbase() {
    return coinbaseAddress
}

function sub_c537b30b(?) {
    return sub_c537b30bAddress
}

function admin() {
    return adminAddress
}

function emergencyExit() {
    require adminAddress == msg.sender
    selfdestruct(coinbaseAddress)
}

function cancel() {
    require adminAddress == msg.sender
    require not sub_c537b30bAddress
    selfdestruct(sub_9989ec5dAddress)
}

function _fallback() payable {
    require eth.balance(this.address) == sub_659f2878
}

function sub_f2131bf8(?) {
    require adminAddress == msg.sender
    sub_c537b30bAddress = arg1
}

function sub_709fda39(?) {
    require adminAddress == msg.sender
    require not uint8(stor5.field_24)
    call coinbaseAddress with:
       value sub_659f2878 / 10 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0x65e40f25: 0, 64, 29, 'Funds transferred to coinbase'
    uint8(stor5.field_24) = 1
}

function sub_3563e13f(?) {
    require adminAddress == msg.sender
    require 1 == bool(uint8(stor5.field_0))
    require 1 == bool(uint8(stor5.field_8))
    require not uint8(stor5.field_16)
    call sub_c537b30bAddress with:
       value 9 * sub_659f2878 / 10 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0x65e40f25: 0, 64, 28, 'Funds transferred to grabber'
    uint8(stor5.field_16) = 1
}

function sub_f11ad901(?) {
    mem[128 len arg1.length] = arg1[all]
    require adminAddress == msg.sender
    mem[ceil32(arg1.length) + 160] = 64
    mem[ceil32(arg1.length) + 192] = 29
    mem[ceil32(arg1.length) + 224] = 'Trying to confirm contract...'
    emit 0x65e40f25: 0, 64, 29, 'Trying to confirm contract...'
    require sub_c537b30bAddress
    require eth.balance(this.address) == sub_659f2878
    mem[ceil32(arg1.length) + 128] = 'willer'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    if sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) == sha3('willer'):
        emit 0x65e40f25: 0, 64, 30, 'Confirming on behalf of willer'
        uint8(stor5.field_0) = 1
    else:
        mem[ceil32(arg1.length) + 128] = 'grabber'
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        if sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) == sha3('grabber'):
            emit 0x65e40f25: 0, 64, 31, 'Confirming on behalf of grabber'
            uint8(stor5.field_8) = 1
}



}
