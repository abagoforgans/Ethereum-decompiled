contract main {


// =======================  Init code  ======================


const _fallback = code.data[20 len 1664]




// =====================  Runtime code  =====================


uint256 stor0;
mapping of struct stor1;

function _fallback() payable {
  stop
}

function sub_9bf9cb63(?) payable {
    stor0++
    stor1[stor0].field_0 = msg.sender or Mask(96, 160, stor1[stor0].field_0)
    stor1[stor0].field_256 = arg1 or Mask(96, 160, stor1[stor0].field_256)
    stor1[stor0].field_512 = arg6 or Mask(96, 160, stor1[stor0].field_512)
    stor1[stor0].field_768 = arg2
    stor1[stor0].field_1024 = arg3
    stor1[stor0].field_1280 = arg4
    stor1[stor0].field_1536 = arg5
    stor1[stor0].field_1792 = msg.value
    return stor0
}

function sub_04c8c25f(?) payable {
    signer = erecover(sha3(stor1[arg1].field_768, arg2), arg3 << 248, arg4, arg5) 
    require erecover.result
    emit 0xfda89b26: (arg2 / stor1[arg1].field_1024)
    if address(signer) != stor1[arg1].field_512:
        emit 0x7cf25913: address(signer)
        emit 0x7cf25913: stor1[arg1].field_512
        return 0
    emit 0xb21a8aba: ((arg2 / stor1[arg1].field_1024) - stor1[arg1].field_1280)
    emit 0xe95a685d: stor1[arg1].field_1792
    if (arg2 / stor1[arg1].field_1024) - stor1[arg1].field_1280 <= 0:
        if stor1[arg1].field_1792 > 0:
            call stor1[arg1].field_0 with:
               value stor1[arg1].field_1792 wei
                 gas 0 wei
            emit 0xca55db1d: stor1[arg1].field_1792
    else:
        emit 0x1b38b46d: ((arg2 / stor1[arg1].field_1024 * stor1[arg1].field_1536) - (stor1[arg1].field_1280 * stor1[arg1].field_1536))
        if (arg2 / stor1[arg1].field_1024 * stor1[arg1].field_1536) - (stor1[arg1].field_1280 * stor1[arg1].field_1536) > stor1[arg1].field_1792:
            call stor1[arg1].field_256 with:
               value stor1[arg1].field_1792 wei
                 gas 0 wei
            emit 0xda3a283e: stor1[arg1].field_1792
        else:
            call stor1[arg1].field_256 with:
               value (arg2 / stor1[arg1].field_1024 * stor1[arg1].field_1536) - (stor1[arg1].field_1280 * stor1[arg1].field_1536) wei
                 gas 0 wei
            emit 0xda3a283e: ((arg2 / stor1[arg1].field_1024 * stor1[arg1].field_1536) - (stor1[arg1].field_1280 * stor1[arg1].field_1536))
            if stor1[arg1].field_1792 - (arg2 / stor1[arg1].field_1024 * stor1[arg1].field_1536) + (stor1[arg1].field_1280 * stor1[arg1].field_1536) > 0:
                call stor1[arg1].field_0 with:
                   value stor1[arg1].field_1792 - (arg2 / stor1[arg1].field_1024 * stor1[arg1].field_1536) + (stor1[arg1].field_1280 * stor1[arg1].field_1536) wei
                     gas 0 wei
                emit 0xca55db1d: (stor1[arg1].field_1792 - (arg2 / stor1[arg1].field_1024 * stor1[arg1].field_1536) + (stor1[arg1].field_1280 * stor1[arg1].field_1536))
    return 1
}



}
