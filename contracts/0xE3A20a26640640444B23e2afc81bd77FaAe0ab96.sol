contract main {


// =======================  Init code  ======================


mapping of uint8 stor1;

function _fallback() payable {
    mem[96 len -1192] = code.data[1406 len -1192]
    mem[64] = -1096
    require mem[mem[96] + 96] >= 2
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        require not stor1[mem[(32 * idx) + mem[96] + 140 len 20]]
        require idx < mem[mem[96] + 96]
        mem[0] = mem[(32 * idx) + mem[96] + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + mem[96] + 140 len 20]] = 1
        idx = idx + 1
        continue 
    return code.data[214 len 1192]
}



// =====================  Runtime code  =====================


uint256 withdrawalRequestCount;
mapping of uint8 signerSet;
mapping of struct sub_ba3ae0ce;

function withdrawalRequestCount() payable {
    return withdrawalRequestCount
}

function signerSet(address arg1) payable {
    return signerSet[arg1]
}

function sub_ba3ae0ce(?) payable {
    return sub_ba3ae0ce[arg1].field_0, sub_ba3ae0ce[arg1].field_256, sub_ba3ae0ce[arg1].field_512, sub_ba3ae0ce[arg1].field_768
}

function _fallback() payable {
    emit Deposit(address(msg.sender), msg.value);
}

function requestWithdrawal(address arg1, uint256 arg2) payable {
    withdrawalRequestCount++
    sub_ba3ae0ce[stor0 + 1][arg1][arg2].field_0 = arg1 or Mask(96, 160, sub_ba3ae0ce[stor0 + 1][arg1][arg2].field_0)
    sub_ba3ae0ce[stor0 + 1][arg1][arg2].field_256 = arg2
    sub_ba3ae0ce[stor0 + 1][arg1][arg2].field_512 = withdrawalRequestCount
    emit 0xd0df5d45: withdrawalRequestCount, address(arg1), arg2, sha3(withdrawalRequestCount + 1, arg1, arg2)
    return sha3(withdrawalRequestCount + 1, arg1, arg2)
}

function confirm(bytes32 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4) payable {
    require sub_ba3ae0ce[arg1].field_0 != 0
    signer = erecover(arg1, arg2 << 248, arg3, arg4) 
    require erecover.result
    require signerSet[address(signer)]
    if 0 == sub_ba3ae0ce[arg1].field_768:
        sub_ba3ae0ce[arg1].field_768 = signer or Mask(96, 160, sub_ba3ae0ce[arg1].field_768)
        emit 0xa0cf8a24: sub_ba3ae0ce[arg1].field_0, sub_ba3ae0ce[arg1].field_256, address(signer)
        return 0
    require sub_ba3ae0ce[arg1].field_768 != address(signer)
    call sub_ba3ae0ce[arg1].field_0 with:
       value sub_ba3ae0ce[arg1].field_256 wei
         gas 0 wei
    emit 0x94d3c694: sub_ba3ae0ce[arg1].field_0, sub_ba3ae0ce[arg1].field_256, sub_ba3ae0ce[arg1].field_768, address(signer)
    sub_ba3ae0ce[arg1].field_0 = 0
    sub_ba3ae0ce[arg1].field_256 = 0
    sub_ba3ae0ce[arg1].field_512 = 0
    sub_ba3ae0ce[arg1].field_768 = 0
    return 1
}



}
