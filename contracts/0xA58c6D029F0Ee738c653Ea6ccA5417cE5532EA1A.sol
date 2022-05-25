contract main {


// =======================  Init code  ======================


function _fallback() {
    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args 0xaf1745c0f8117384dfa5fff40f824057c70f2ed3, 0x8000000000000000000000000000000000000000000000000000000000000000
    require ext_call.success
    require ext_call.return_data[0]
    return code.data[249 len 1480]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function enableToken(address arg1) {
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args 0x818e6fecd516ecc3849daf6845e3ec868087b755, 0x8000000000000000000000000000000000000000000000000000000000000000
    require ext_call.success
    require ext_call.return_data[0]
}

function buyToken(address arg1) payable {
    require ext_code.size(0xaf1745c0f8117384dfa5fff40f824057c70f2ed3)
    call 0xaf1745c0f8117384dfa5fff40f824057c70f2ed3.getAuctionIndex(address arg1, address arg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
    require ext_call.success
    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
    require ext_call.success
    require ext_code.size(0xaf1745c0f8117384dfa5fff40f824057c70f2ed3)
    call 0xaf1745c0f8117384dfa5fff40f824057c70f2ed3.deposit(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, msg.value
    require ext_call.success
    require ext_code.size(0xaf1745c0f8117384dfa5fff40f824057c70f2ed3)
    call 0xaf1745c0f8117384dfa5fff40f824057c70f2ed3.postBuyOrder(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 0, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, ext_call.return_data[0], msg.value
    require ext_call.success
    require ext_code.size(0xaf1745c0f8117384dfa5fff40f824057c70f2ed3)
    call 0xaf1745c0f8117384dfa5fff40f824057c70f2ed3.claimBuyerFunds(address arg1, address arg2, address arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 0, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(this.address), ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(0xaf1745c0f8117384dfa5fff40f824057c70f2ed3)
    call 0xaf1745c0f8117384dfa5fff40f824057c70f2ed3.withdraw(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
         gas gas_remaining - 710 wei
        args 0, 0, 0, 4008636142, msg.sender, 0x8000000000000000000000000000000000000000000000000000000000000000, 1, address(this.address)
    require ext_call.success
    require ext_call.return_data[0] > 0
}



}
