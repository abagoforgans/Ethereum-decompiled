contract main {


// =======================  Init code  ======================


array of uint256 stor0;
uint256 stor1;
address stor3;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 23
    stor0.length.field_8 = 'noGreetSentenceProvided' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor1 = 0
    require not msg.value
    stor3 = msg.sender
    return code.data[301 len 2685]
}



// =====================  Runtime code  =====================


array of struct greet;
uint256 sub_683d1681;
array of uint256 sub_c1f77608;
address _owner;

function sub_5d149f2a(?) {
    return sub_683d1681
}

function sub_683d1681(?) {
    return sub_683d1681
}

function _owner() {
    return _owner
}

function sub_c1f77608(?) {
    return sub_c1f77608[0 len sub_c1f77608.length]
}

function sub_c71bf6f0(?) {
    return greet[0 len greet.length].field_0
}

function greet() {
    return greet[0 len greet.length].field_0
}

function kill() {
    if _owner != msg.sender:
    selfdestruct(_owner)
}

function _fallback() payable {
    revert
}

function sub_a1a2ca15(?) {
    require ext_code.size(arg1)
    call arg1.0x683d1681 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function setGreeting(string arg1) {
    greet[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 224] = uint256(greet.field_0)
    idx = ceil32(arg1.length) + 224
    s = 0
    while ceil32(arg1.length) + greet.length + 224 > idx + 32:
        mem[idx + 32] = greet[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x3e08950d: _owner, Array(len=greet.length, data=mem[ceil32(arg1.length) + 224 len greet.length + (floor32(greet.length - 1) + -greet.length + 32 % 32)])
}

function sub_4aa9c4d6(?) {
    mem[192] = greet.length
    mem[224] = uint256(greet.field_0)
    idx = 224
    s = 0
    while greet.length + 224 > idx + 32:
        mem[idx + 32] = greet[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xb1bafe64: msg.sender, Array(len=greet.length, data=mem[224 len greet.length + (floor32(greet.length - 1) + -greet.length + 32 % 32)])
    sub_683d1681++
    mem[160] = uint256(greet.field_0)
    idx = 160
    s = 0
    while greet.length + 128 > idx:
        mem[idx + 32] = greet[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=greet.length, data=mem[160 len greet.length])
}



}
