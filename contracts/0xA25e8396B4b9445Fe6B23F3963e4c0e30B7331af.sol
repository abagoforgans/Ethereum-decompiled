contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0x55340fc7c3dfbb1a3886605c25e83e6b7fb93d8
    return code.data[213 len 3516]
}



// =====================  Runtime code  =====================


#
#  - refund(uint256 arg1, address arg2, uint256 arg3)
#
address owner;
address tokenAddress;
address stor2;
address escrowAddress;
uint256 escrow_balance;
mapping of uint256 sub_c14cfa9b;
mapping of uint256 sub_9b369571;
array of uint256 sub_c230dd81;

function escrow_balance() {
    return escrow_balance
}

function owner() {
    return owner
}

function sub_9b369571(?) {
    return sub_9b369571[arg1]
}

function sub_c14cfa9b(?) {
    return sub_c14cfa9b[arg1]
}

function sub_c230dd81(?) {
    require arg2 < sub_c230dd81[arg1]
    return sub_c230dd81[arg1][arg2]
}

function escrow() {
    return escrowAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_0c6fdf1f(?) {
    sub_9b369571[arg1] = arg2
}

function sub_df6f22fa(?) {
    sub_c14cfa9b[arg1] = arg2
}

function sub_7341ab0f(?) {
    require msg.sender == owner
    escrowAddress = arg1
}

function setFeeAccount(address arg1) {
    require msg.sender == owner
    stor2 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function withdrawFee(uint256 arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args escrowAddress, stor2, sub_9b369571[arg1]
    require ext_call.success
}

function sub_db3e0bd9(?) {
    require arg3 < sub_c230dd81[arg1]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args escrowAddress, address(arg2), sub_c230dd81[arg1][arg3]
    require ext_call.success
}

function sub_492a8b0a(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    sub_c230dd81[arg1] = arg2.length
    if not arg2.length:
        idx = 0
        while sub_c230dd81[arg1] > idx:
            sub_c230dd81[arg1][idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg2.length) + 128 > idx:
            sub_c230dd81[arg1][s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while sub_c230dd81[arg1] > idx:
            sub_c230dd81[arg1][idx] = 0
            idx = idx + 1
            continue 
}



}
