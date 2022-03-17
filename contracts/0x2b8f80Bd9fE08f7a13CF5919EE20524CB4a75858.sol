contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 4602]




// =====================  Runtime code  =====================


#
#  - sub_068e3ef1(?)
#  - sub_079ed96f(?)
#  - sub_317c152d(?)
#  - sub_332a06ac(?)
#  - sub_3458e13e(?)
#  - sub_38f4c9eb(?)
#  - sub_54e37911(?)
#  - sub_5748147e(?)
#  - sub_67f146ce(?)
#  - AddedToGeneration(address arg1, uint256 arg2)
#  - sub_83973eb3(?)
#  - sub_968f7720(?)
#  - sub_a163a325(?)
#  - sub_dd8abb6c(?)
#  - RemovedFromGeneration(address arg1, uint256 arg2)
#
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
mapping of uint256 stor99;

function _fallback() payable {
    revert 
}

function sub_8f00e61a(?) payable {
    codecall 0x661d36b10dd5b879e496edaf860327812fb81e48.0xe6ce3a6a with:
         gas gas_remaining - 50 wei
        args uint32(call.func_hash) + 4, 0x3e00000000000000000000000000000000000000000000000000000000000000, block.number
    require callcode.return_code
    require callcode.return_data[0] != 0
    revert 
}

function sub_c75e8f88(?) payable {
    codecall 0x661d36b10dd5b879e496edaf860327812fb81e48.0xe6ce3a6a with:
         gas gas_remaining - 50 wei
        args uint32(call.func_hash) + 6, 0x3e00000000000000000000000000000000000000000000000000000000000000, block.number
    require callcode.return_code
    require callcode.return_data[0] != 0
    codecall 0xb06732649abb0e2d4fd1988c7cd74aa182c5453e.0x81a33a6f with:
         gas gas_remaining - 50 wei
        args callcode.return_data[0]
    require not callcode.return_code
    revert 
}

function sub_b6cbfdb2(?) payable {
    stor3[uint32(call.func_hash)]++
    stor[uint32(call.func_hash) + 8][stor3[uint32(call.func_hash)] + 1] = stor3[uint32(call.func_hash)] + 1
    stor1[('map', ('add', 1, ('stor', ('array', ('mask_shl', 32, 0, 0, ('cd', 0)), ('name', 'stor3', 3)))), ('add', 8, ('mask_shl', 32, 0, 0, ('cd', 0))))] = block.number + stor2[uint32(call.func_hash)] + stor[uint32(call.func_hash)]
    codecall 0xb06732649abb0e2d4fd1988c7cd74aa182c5453e.0x94e8767d with:
         gas gas_remaining - 50 wei
        args (stor3[uint32(call.func_hash)] + 1)
    require callcode.return_code
    codecall 0x661d36b10dd5b879e496edaf860327812fb81e48.0xbacd6958 with:
         gas gas_remaining - 50 wei
        args uint32(call.func_hash) + 4, callcode.return_data[0], stor1[('map', ('add', 1, ('stor', ('array', ('mask_shl', 32, 0, 0, ('cd', 0)), ('name', 'stor3', 3)))), ('add', 8, ('mask_shl', 32, 0, 0, ('cd', 0))))]
    revert 
}



}
