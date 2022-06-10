contract main {




// =====================  Runtime code  =====================


const sub_4bd29cfb(?) = 0x8dd5fbce2f6a956c3022ba3663759011dd51e73e

const registry = 0x13949f288172bd7e36837bddc7211

const sub_b1bb437d(?) = 0x85d4780b73119b644ae5ecd22b376

const tokenController = 0x75efbee23fe2de1bd0b7690883cc9

const globalPause = 0


function _fallback() payable {
    revert
}

function upgrade() {
    require ext_code.size(0x75efbee23fe2de1bd0b7690883cc9)
    call 0x0000000000075efbee23fe2de1bd0b7690883cc9.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x75efbee23fe2de1bd0b7690883cc9)
    call 0x0000000000075efbee23fe2de1bd0b7690883cc9.claimOwnership() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x85d4780b73119b644ae5ecd22b376)
    call 0x0000000000085d4780b73119b644ae5ecd22b376.claimOwnership() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x8dd5fbce2f6a956c3022ba3663759011dd51e73e)
    call 0x8dd5fbce2f6a956c3022ba3663759011dd51e73e.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x85d4780b73119b644ae5ecd22b376)
    call 0x0000000000085d4780b73119b644ae5ecd22b376.setTotalSupply(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x8dd5fbce2f6a956c3022ba3663759011dd51e73e)
    call 0x8dd5fbce2f6a956c3022ba3663759011dd51e73e.balances() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x8dd5fbce2f6a956c3022ba3663759011dd51e73e)
    call 0x8dd5fbce2f6a956c3022ba3663759011dd51e73e.allowances() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x75efbee23fe2de1bd0b7690883cc9)
    call 0x0000000000075efbee23fe2de1bd0b7690883cc9.requestReclaimContract(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x75efbee23fe2de1bd0b7690883cc9)
    call 0x0000000000075efbee23fe2de1bd0b7690883cc9.requestReclaimContract(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x75efbee23fe2de1bd0b7690883cc9)
    call 0x0000000000075efbee23fe2de1bd0b7690883cc9.issueClaimOwnership(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x75efbee23fe2de1bd0b7690883cc9)
    call 0x0000000000075efbee23fe2de1bd0b7690883cc9.issueClaimOwnership(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x75efbee23fe2de1bd0b7690883cc9)
    call 0x0000000000075efbee23fe2de1bd0b7690883cc9.transferChild(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), 0x85d4780b73119b644ae5ecd22b376
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x75efbee23fe2de1bd0b7690883cc9)
    call 0x0000000000075efbee23fe2de1bd0b7690883cc9.transferChild(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), 0x85d4780b73119b644ae5ecd22b376
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x85d4780b73119b644ae5ecd22b376)
    call 0x0000000000085d4780b73119b644ae5ecd22b376.0xf2fde38b with:
         gas gas_remaining wei
        args 0x75efbee23fe2de1bd0b7690883cc9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x75efbee23fe2de1bd0b7690883cc9)
    call 0x0000000000075efbee23fe2de1bd0b7690883cc9.issueClaimOwnership(address arg1) with:
         gas gas_remaining wei
        args 0x85d4780b73119b644ae5ecd22b376
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x75efbee23fe2de1bd0b7690883cc9)
    call 0x0000000000075efbee23fe2de1bd0b7690883cc9.setTrueUSD(address arg1) with:
         gas gas_remaining wei
        args 0x85d4780b73119b644ae5ecd22b376
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x75efbee23fe2de1bd0b7690883cc9)
    call 0x0000000000075efbee23fe2de1bd0b7690883cc9.claimStorageForProxy(address arg1, address arg2, address arg3) with:
         gas gas_remaining wei
        args 0x85d4780b73119b644ae5ecd22b376, address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x75efbee23fe2de1bd0b7690883cc9)
    call 0x0000000000075efbee23fe2de1bd0b7690883cc9.setTusdRegistry(address arg1) with:
         gas gas_remaining wei
        args 0x13949f288172bd7e36837bddc7211
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x75efbee23fe2de1bd0b7690883cc9)
    call 0x0000000000075efbee23fe2de1bd0b7690883cc9.setGlobalPause(address arg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x75efbee23fe2de1bd0b7690883cc9)
    call 0x0000000000075efbee23fe2de1bd0b7690883cc9.transferChild(address arg1, address arg2) with:
         gas gas_remaining wei
        args 0x8dd5fbce2f6a956c3022ba3663759011dd51e73e, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x8dd5fbce2f6a956c3022ba3663759011dd51e73e)
    call 0x8dd5fbce2f6a956c3022ba3663759011dd51e73e.claimOwnership() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x8dd5fbce2f6a956c3022ba3663759011dd51e73e)
    call 0x8dd5fbce2f6a956c3022ba3663759011dd51e73e.delegateToNewContract(address arg1) with:
         gas gas_remaining wei
        args 0x85d4780b73119b644ae5ecd22b376
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x8dd5fbce2f6a956c3022ba3663759011dd51e73e)
    call 0x8dd5fbce2f6a956c3022ba3663759011dd51e73e.0xf2fde38b with:
         gas gas_remaining wei
        args 0x75efbee23fe2de1bd0b7690883cc9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x75efbee23fe2de1bd0b7690883cc9)
    call 0x0000000000075efbee23fe2de1bd0b7690883cc9.issueClaimOwnership(address arg1) with:
         gas gas_remaining wei
        args 0x8dd5fbce2f6a956c3022ba3663759011dd51e73e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x75efbee23fe2de1bd0b7690883cc9)
    call 0x0000000000075efbee23fe2de1bd0b7690883cc9.0xf2fde38b with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
