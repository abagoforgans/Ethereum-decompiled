contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = 100000
    stor2 = 0
    return code.data[112 len 704]
}



// =====================  Runtime code  =====================


address stor0;
uint256 sub_178bcc93;
uint256 counter;
mapping of address sub_d03a8c5c;

function sub_178bcc93(?) {
    return sub_178bcc93
}

function counter() {
    return counter
}

function sub_d03a8c5c(?) {
    return sub_d03a8c5c[arg1]
}

function _fallback() payable {
    revert
}

function contribute() payable {
    require msg.value >= 10^16
    sub_178bcc93 -= msg.value / 10^16
    idx = 0
    while idx < msg.value / 10^16:
        counter++
        mem[0] = counter
        mem[32] = 3
        sub_d03a8c5c[stor2] = msg.sender
        idx = idx + 1
        continue 
    call stor0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
