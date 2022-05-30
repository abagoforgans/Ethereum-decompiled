contract main {


// =======================  Init code  ======================


address stor0;
address stor2;

function _fallback() {
    stor0 = code.data[18947 len 20]
    stor2 = msg.sender
    return code.data[100 len 18835]
}



// =====================  Runtime code  =====================


#
#  - getAllCostsInfoOf(address arg1, bool arg2)
#  - getAllCoinPairs(bool arg1)
#  - getAllSharesInfoOf(address arg1, bool arg2)
#
address stor0;
array of struct stor1;
address stor2;

function getTotalCoinPairs() {
    return stor1.length
}

function _fallback() payable {
    revert
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require stor0 == msg.sender
    return 0
}

function withdrawFromCoinPair(uint256 arg1) {
    require arg1 < stor1.length
    require ext_code.size(stor1[arg1].field_0)
    call stor1[arg1].field_0.withdraw(address arg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function setCoinPairVisibility(uint256 arg1, bool arg2) {
    require stor2 == msg.sender
    require arg1 < stor1.length
    require ext_code.size(stor1[arg1].field_0)
    call stor1[arg1].field_0.setVisibility(bool arg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
}

function sub_0fc52ba2(?) payable {
    require ext_code.size(msg.sender) <= 0
    require arg1 < stor1.length
    require ext_code.size(stor1[arg1].field_0)
    call stor1[arg1].field_0.0xad71b8be with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender, arg2
    require ext_call.success
}

function setCoinPairOraclizeGasPrice(uint256 arg1, uint256 arg2) {
    require stor2 == msg.sender
    require arg1 < stor1.length
    require ext_code.size(stor1[arg1].field_0)
    call stor1[arg1].field_0.changeOraclizeGasPrice(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
}

function sub_dcefc5d4(?) {
    require stor2 == msg.sender
    create contract with 0 wei
                    code: code.data[7171 len 11621], Array(len=stor0, data=arg1.length, arg1[all], arg2.length, arg2[all]), arg1.length + 192, arg3, arg4
    require create.new_address
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = stor1.length + 1
        while stor1.length > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor1[stor1.length].field_0 = address(create.new_address)
}

function setAllOraclizeGasPrices(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require stor2 == msg.sender
    if var26002 < stor1.length:
        require stor2 == msg.sender
        require var38004 < stor1.length
        require var40003 < stor1.length
        mem[0] = 1
        mem[96] = 0xc0c1b10700000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(stor1[var42001].field_0)
        call var44001.mem[var44003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var44003 + 4 len var44004 - 4]
        require ext_call.success
        idx = var46008
        while idx + 1 < stor1.length:
            require stor2 == msg.sender
            require idx + 1 < stor1.length
            mem[0] = 1
            mem[96] = 0xc0c1b10700000000000000000000000000000000000000000000000000000000
            mem[100] = arg1
            require ext_code.size(stor1[idx].field_256)
            call stor1[idx].field_256.changeOraclizeGasPrice(uint256 arg1) with:
                 gas gas_remaining - 710 wei
                args arg1
            require ext_call.success
            idx = idx + 1
            continue 
}



}
