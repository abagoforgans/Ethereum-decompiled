contract main {




// =====================  Runtime code  =====================


uint8 stor0;
array of uint256 sub_c70b0e01;

function sub_c70b0e01(?) {
    return sub_c70b0e01[arg1][0 len sub_c70b0e01[arg1].length]
}

function getAccount(address arg1) {
    return sub_c70b0e01[address(arg1)][0 len sub_c70b0e01[address(arg1)].length]
}

function _fallback() payable {
    revert
}

function register(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) == .:
        revert with 0, 'account is error'
    require arg1.length - 1 < arg1.length
    if Mask(8, 248, mem[arg1.length + 127 len 1], 0) == .:
        revert with 0, 'account is error'
    if arg1.length > 12:
        revert with 0, 'account is error'
    if arg1.length < 1:
        revert with 0, 'account is error'
    stor0 = 0
    # nil
}



}
