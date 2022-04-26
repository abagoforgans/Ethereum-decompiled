contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
array of uint256 stor7;
array of uint256 stor8;
array of uint256 stor11;
array of uint256 stor12;

function _fallback() {
    stor0 = msg.sender
    create contract with 0 wei
                    code: code.data[2703 len 3640]
    require create.new_address
    stor1 = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).mintTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args stor0, 1000000 * 10^18
    require ext_call.success
    stor3 = block.timestamp
    require block.timestamp + (720 * 24 * 3600) >= block.timestamp
    stor4 = block.timestamp + (720 * 24 * 3600)
    stor2 = 1000
    stor6 = 100000000 * 10^18
    stor7.length = 300000000 * 10^18
    stor5 = 0
    require stor3 + (168 * 24 * 3600) >= stor3
    stor8.length = stor3 + (168 * 24 * 3600)
    idx = 1
    while idx < 4:
        require idx - 1 < 4
        require stor7[idx] + (168 * 24 * 3600) >= stor7[idx]
        require idx < 4
        stor8[idx] = stor7[idx] + (168 * 24 * 3600)
        idx = idx + 1
        continue 
    require stor11.length + (168 * 24 * 3600) >= stor11.length
    stor12.length = stor11.length + (168 * 24 * 3600)
    idx = 1
    while idx < 4:
        require idx - 1 < 4
        require stor11[idx] + (168 * 24 * 3600) >= stor11[idx]
        require idx < 4
        stor12[idx] = stor11[idx] + (168 * 24 * 3600)
        idx = idx + 1
        continue 
    return code.data[591 len 2112]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#


}
