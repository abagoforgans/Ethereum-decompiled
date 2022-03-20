contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 546]




// =====================  Runtime code  =====================


mapping of struct stor0;
uint256 sub_8b69450d;

function sub_8b69450d(?) payable {
    return sub_8b69450d
}

function kill() payable {
    if msg.sender != 0x82ab1649f370ccf9f2a5006130c4fca28db2587e:
    selfdestruct(0x82ab1649f370ccf9f2a5006130c4fca28db2587e)
}

function _fallback() payable {
  stop
}

function holdings(uint256 arg1) payable {
    return stor0[arg1].field_0, stor0[arg1].field_256, stor0[arg1].field_512, stor0[arg1].field_672
}

function signRelease(uint256 arg1) payable {
    if stor0[arg1].field_512 == msg.sender:
        if 1 == stor0[arg1].field_672:
            call stor0[arg1].field_256 with:
               value stor0[arg1].field_0 wei
                 gas 0 wei
            stor0[arg1].field_672 = 0
    return 1
}

function holdCoin(address arg1, address arg2) payable {
    sub_8b69450d++
    stor0[stor1 + 1].field_0 = msg.value
    stor0[stor1 + 1].field_256 = arg1 or Mask(96, 160, stor0[stor1 + 1].field_256)
    stor0[stor1 + 1].field_512 = arg2
    stor0[stor1 + 1].field_672 = 1
    stor0[stor1 + 1].field_680 = Mask(88, 168, arg2) >> 168
    return sub_8b69450d
}



}
