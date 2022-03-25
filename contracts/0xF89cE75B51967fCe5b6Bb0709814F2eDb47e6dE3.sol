contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 788]
}



// =====================  Runtime code  =====================


address owner;
array of struct accounts;

function accounts(address arg1) {
    mem[192] = accounts[arg1].field_0
    idx = 192
    s = 0
    while accounts[arg1].length + 192 > idx + 32:
        mem[idx + 32] = accounts[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=accounts[arg1].length, data=mem[192 len accounts[arg1].length + (floor32(accounts[arg1].length - 1) + -accounts[arg1].length + 32 % 32)]), 
           accounts[arg1].field_256
}

function owner() {
    return owner
}

function _fallback() payable {
    revert 
}

function sub_ef35329f(?) {
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    accounts[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
    accounts[address(msg.sender)].field_256 = msg.value
    emit 0xb27bb489: Array(len=arg1.length, data=arg1[all]), msg.sender
}



}
