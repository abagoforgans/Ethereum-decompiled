contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 1
    return code.data[26 len 959]
}



// =====================  Runtime code  =====================


uint256 nonce;
mapping of struct sub_5f3e755f;

function sub_5f3e755f(?) payable {
    return sub_5f3e755f[arg1].field_0, 
           sub_5f3e755f[arg1].field_256,
           sub_5f3e755f[arg1].field_512,
           sub_5f3e755f[arg1].field_768,
           sub_5f3e755f[arg1].field_1024
}

function nonce() payable {
    return nonce
}

function _fallback() payable {
  stop
}

function sub_c7df9334(?) payable {
    call this.address.0xa979f5 with:
         gas gas_remaining - 25050 wei
        args arg1, arg2, address(msg.sender), msg.sender
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_00a979f5(?) payable {
    if arg2 < block.number + 6:
        return 0
    nonce++
    sub_5f3e755f[stor0].field_0 = arg1
    sub_5f3e755f[stor0].field_256 = arg2
    sub_5f3e755f[stor0].field_512 = msg.value
    sub_5f3e755f[stor0].field_768 = arg3 or Mask(96, 160, sub_5f3e755f[stor0].field_768)
    sub_5f3e755f[stor0].field_1024 = arg4 or Mask(96, 160, sub_5f3e755f[stor0].field_1024)
    return nonce
}

function reveal(uint256 arg1) payable {
    if sub_5f3e755f[arg1].field_256 + 6 < block.number:
        return 0
    if bool(sha3(block.hash(sub_5f3e755f[arg1].field_256), sub_5f3e755f[arg1].field_0)) != 1:
        call sub_5f3e755f[arg1].field_1024 with:
           value sub_5f3e755f[arg1].field_512 wei
             gas 0 wei
        sub_5f3e755f[arg1].field_0 = 0
        sub_5f3e755f[arg1].field_256 = 0
        sub_5f3e755f[arg1].field_512 = 0
        sub_5f3e755f[arg1].field_768 = 0
        sub_5f3e755f[arg1].field_1024 = 0
        return 2
    call sub_5f3e755f[arg1].field_768 with:
       value sub_5f3e755f[arg1].field_512 wei
         gas 0 wei
    sub_5f3e755f[arg1].field_0 = 0
    sub_5f3e755f[arg1].field_256 = 0
    sub_5f3e755f[arg1].field_512 = 0
    sub_5f3e755f[arg1].field_768 = 0
    sub_5f3e755f[arg1].field_1024 = 0
    return 1
}



}
