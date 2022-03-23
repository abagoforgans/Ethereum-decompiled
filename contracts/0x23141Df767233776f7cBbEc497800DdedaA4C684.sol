contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    require msg.value <= 0
    if block.number < 256:
        if code.data[383 len 32] >= block.number:
            stor0 = code.data[383 len 32] < block.number or Mask(248, 8, stor0)
        else:
            stor0 = block.hash(code.data[383 len 32]) == code.data[415 len 32] or Mask(248, 8, stor0)
    else:
        if code.data[383 len 32] <= block.number - 256:
            stor0 = code.data[383 len 32] > block.number - 256 or Mask(248, 8, stor0)
        else:
            if code.data[383 len 32] >= block.number:
                stor0 = code.data[383 len 32] < block.number or Mask(248, 8, stor0)
            else:
                stor0 = block.hash(code.data[383 len 32]) == code.data[415 len 32] or Mask(248, 8, stor0)
    return code.data[140 len 243]
}



// =====================  Runtime code  =====================


uint8 stor0;

function isRightBranch() payable {
    return bool(stor0)
}

function _fallback() payable {
    revert 
}

function send(address arg1) payable {
    require stor0
    call arg1 with:
       value msg.value wei
         gas 0 wei
    require ext_call.success
}



}
