contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor3;

function _fallback() payable {
    stor0 = block.number
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor3 = 0
    return code.data[45 len 2831]
}



// =====================  Runtime code  =====================


mapping of address sub_3a5fccee;
uint256 numBets;

function sub_3a5fccee(?) payable {
    return address(sub_3a5fccee[arg1])
}

function numBets() payable {
    return numBets
}

function _fallback() payable {
    revert 
}

function sub_7157337c(?) payable {
    mem[ceil32(arg3.length) + 2506 len arg3.length] = arg3[all]
    if not arg3.length % 32:
        create contract with 0 wei
                        code: code.data[613 len 2218], arg1, arg2, Array(len=address(arg4), data=arg3.length, arg3[all])
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 2506] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 2538 len arg3.length % 32]
        create contract with 0 wei
                        code: code.data[613 len 2218], arg1, arg2, Array(len=address(arg4), data=arg3.length, arg3[all], mem[ceil32(arg3.length) + arg3.length + 2506 len -(arg3.length % 32) + 32])
    call address(create.new_address).getReward(uint256[] rg1) with:
       value msg.value wei
         gas gas_remaining - 34050 wei
        args msg.sender
    require ext_call.success
    uint256(sub_3a5fccee[stor3]) = create.new_address or Mask(96, 160, uint256(sub_3a5fccee[stor3]))
    numBets++
    emit 0x538b0c6b: Array(len=11, data='Bet Created')
    return 0
}



}
