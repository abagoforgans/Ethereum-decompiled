contract main {




// =====================  Runtime code  =====================


mapping of address sub_b2220d67;
uint256 numDonors;
uint256 totalEarned;
address sub_30856932Address;

function sub_30856932(?) {
    return sub_30856932Address
}

function totalEarned() {
    return totalEarned
}

function numDonors() {
    return numDonors
}

function sub_b2220d67(?) {
    require calldata.size - 4 >= 32
    return sub_b2220d67[arg1]
}

function _fallback() payable {
    revert
}

function sub_58611654(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if totalEarned > totalEarned + msg.value:
        revert with 0, 'Integer Overflow, Aborting'
    if msg.value < 10^17:
        revert with 0, 'Minimum of 0.1 Ether required. Aborting'
    sub_b2220d67[stor1] = msg.sender
    mem[ceil32(arg1.length) + 128] = msg.sender
    mem[ceil32(arg1.length) + 160] = msg.value
    emit 0xc81561f3: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], Array(len=arg1.length, data=arg1[all]), numDonors
    numDonors++
    call sub_30856932Address with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
