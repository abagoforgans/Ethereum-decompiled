contract main {




// =====================  Runtime code  =====================


uint32 stor0;
address stor0;
uint256 stor0;

function _fallback() {
    revert
}

function addLog(uint256 arg1, string arg2) {
    emit Log(Array(len=arg2.length, data=arg2[all]), arg1, msg.sender);
}

function isNonFungible(uint256 arg1) {
    return (Mask(1, 247, arg1) == 0x80000000000000000000000000000000000000000000000000000000000000)
}

function fungibleTypeCount() {
    require ext_code.size(address(stor0))
    call address(stor0).0x8e628636 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function nonFungibleTypeCount() {
    require ext_code.size(address(stor0))
    call address(stor0).0x645cca84 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function reserve(uint256 arg1) {
    require ext_code.size(address(stor0))
    call address(stor0).0x77778db3 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function ownerOf(uint256 arg1) {
    require ext_code.size(address(stor0))
    call address(stor0).'}hcy' with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function cancelTrade(uint256 arg1) {
    require ext_code.size(0x515e8153dd76ac48b0f4967197a4d7f8e6eed7d7)
    delegate 0x515e8153dd76ac48b0f4967197a4d7f8e6eed7d7.0xb6c5a357 with:
         gas gas_remaining wei
        args address(stor0), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function nonFungibleCount(uint256 arg1) {
    require ext_code.size(address(stor0))
    call address(stor0).0xe5230867 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[24 len 8]
}

function completeTrade(uint256 arg1) {
    require ext_code.size(0x515e8153dd76ac48b0f4967197a4d7f8e6eed7d7)
    delegate 0x515e8153dd76ac48b0f4967197a4d7f8e6eed7d7.0x6f41c08c with:
         gas gas_remaining wei
        args address(stor0), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function acceptAssignment(uint256 arg1) {
    require ext_code.size(0x2c76c620c0648d40e3dce840cb6ec675a7826477)
    delegate 0x2c76c620c0648d40e3dce840cb6ec675a7826477.0x3874f484 with:
         gas gas_remaining wei
        args address(stor0), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function decimals(uint256 arg1) {
    require ext_code.size(address(stor0))
    call address(stor0).0xff42fe18 with:
         gas gas_remaining wei
        args Mask(64, 192, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[31 len 1]
}

function setApprovalForAll(address arg1, bool arg2) {
    require ext_code.size(0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8)
    delegate 0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8.0x2e6c802d with:
         gas gas_remaining wei
        args address(stor0), address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function allowance(uint256 arg1, address arg2, address arg3) {
    require ext_code.size(address(stor0))
    call address(stor0).0x39ac0f39 with:
         gas gas_remaining wei
        args arg1, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getERC20Adapter(uint256 arg1) {
    require not Mask(1, 247, arg1)
    require ext_code.size(address(stor0))
    call address(stor0).0xec9d633d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function isCreatorOf(uint256 arg1, address arg2) {
    require ext_code.size(address(stor0))
    call address(stor0).0xd48e638a with:
         gas gas_remaining wei
        args Mask(64, 192, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[12 len 20] == arg2)
}

function whitelisted(uint256 arg1, address arg2, address arg3) {
    require ext_code.size(address(stor0))
    call address(stor0).0x5dbc33e7 with:
         gas gas_remaining wei
        args arg1, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2, uint256 arg3) {
    require ext_code.size(0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8)
    delegate 0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8.0x313144f7 with:
         gas gas_remaining wei
        args 0, uint32(stor0), address(arg1), arg2, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function isContract(address arg1) {
    require ext_code.size(0x53a3450d15db0bbef341b1462be97e63a497bcfe)
    delegate 0x53a3450d15db0bbef341b1462be97e63a497bcfe.0x16279055 with:
         gas gas_remaining wei
        args arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function approve(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require ext_code.size(0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8)
    delegate 0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8.0xaaf560dc with:
         gas gas_remaining wei
        args 0, uint32(stor0), address(arg1), arg2, arg3, arg4
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function typeByIndex(uint256 arg1) {
    require ext_code.size(0x3c4e07e512564ef756426c826bb0e2e821665161)
    delegate 0x3c4e07e512564ef756426c826bb0e2e821665161.0x2dd0208f with:
         gas gas_remaining wei
        args address(stor0), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function totalSupply(uint256 arg1) {
    require ext_code.size(0x2c76c620c0648d40e3dce840cb6ec675a7826477)
    delegate 0x2c76c620c0648d40e3dce840cb6ec675a7826477.0xc3ea4147 with:
         gas gas_remaining wei
        args address(stor0), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function minMeltValue(uint256 arg1) {
    require ext_code.size(0x2c76c620c0648d40e3dce840cb6ec675a7826477)
    delegate 0x2c76c620c0648d40e3dce840cb6ec675a7826477.0x3ef2b102 with:
         gas gas_remaining wei
        args address(stor0), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function mintableSupply(uint256 arg1) {
    require ext_code.size(0x2c76c620c0648d40e3dce840cb6ec675a7826477)
    delegate 0x2c76c620c0648d40e3dce840cb6ec675a7826477.0xdf381aa with:
         gas gas_remaining wei
        args address(stor0), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function tradeCompletable(uint256 arg1) {
    require ext_code.size(0x515e8153dd76ac48b0f4967197a4d7f8e6eed7d7)
    delegate 0x515e8153dd76ac48b0f4967197a4d7f8e6eed7d7.0x36cf9e0c with:
         gas gas_remaining wei
        args address(stor0), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function circulatingSupply(uint256 arg1) {
    require ext_code.size(0x2c76c620c0648d40e3dce840cb6ec675a7826477)
    delegate 0x2c76c620c0648d40e3dce840cb6ec675a7826477.0x8bf1be36 with:
         gas gas_remaining wei
        args address(stor0), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function fungibleTypeByIndex(uint256 arg1) {
    require ext_code.size(0x23c5a0ff727eda408b1baa33e91897b2c5284804)
    delegate 0x23c5a0ff727eda408b1baa33e91897b2c5284804.0x2dd0208f with:
         gas gas_remaining wei
        args address(stor0), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function transferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require ext_code.size(0x3c4e07e512564ef756426c826bb0e2e821665161)
    delegate 0x3c4e07e512564ef756426c826bb0e2e821665161.0xeac57a03 with:
         gas gas_remaining wei
        args 0, uint32(stor0), address(arg1), address(arg2), arg3, arg4
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function setApprovalAdapter(address arg1, uint256 arg2, bool arg3, address arg4) {
    require ext_code.size(0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8)
    delegate 0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8.0x9d860b60 with:
         gas gas_remaining wei
        args 0, uint32(stor0), address(arg1), arg2, arg3, address(arg4)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferAdapter(address arg1, uint256 arg2, uint256 arg3, address arg4) {
    require ext_code.size(0x5f224cdd7f644d834218f86176eff19979cd1b5d)
    delegate 0x5f224cdd7f644d834218f86176eff19979cd1b5d.0x2356be97 with:
         gas gas_remaining wei
        args 0, uint32(stor0), address(arg1), arg2, arg3, address(arg4)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function safeTransfer(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require ext_code.size(0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8)
    delegate 0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8.0xdb3f2a75 with:
         gas gas_remaining wei
        args 0, uint32(stor0), address(arg1), arg2, arg3, 160, arg4.length, arg4[all]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function approveAdapter(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) {
    require ext_code.size(0x5f224cdd7f644d834218f86176eff19979cd1b5d)
    delegate 0x5f224cdd7f644d834218f86176eff19979cd1b5d.0x6d8e2fd7 with:
         gas gas_remaining wei
        args 0, uint32(stor0), address(arg1), arg2, arg3, arg4, arg5
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function nonFungibleByIndex(uint256 arg1, uint256 arg2) {
    require ext_code.size(0x87d89db90afdfb04979ec3832234daf5532de56b)
    delegate 0x87d89db90afdfb04979ec3832234daf5532de56b.0xc40035d3 with:
         gas gas_remaining wei
        args address(stor0), arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function setApproval(address arg1, uint256[] arg2, bool arg3) {
    require ext_code.size(0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8)
    delegate 0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8.0xfc5d37d1 with:
         gas gas_remaining wei
        args 0, uint32(stor0), address(arg1), 128, arg3, arg2.length, call.data[arg2 + 36 len 32 * arg2.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferFromAdapter(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) {
    require ext_code.size(0x5f224cdd7f644d834218f86176eff19979cd1b5d)
    delegate 0x5f224cdd7f644d834218f86176eff19979cd1b5d.0x60bcf0b5 with:
         gas gas_remaining wei
        args 0, uint32(stor0), address(arg1), address(arg2), arg3, arg4, arg5
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function isApprovedForAll(address arg1, address arg2) {
    require ext_code.size(0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8)
    delegate 0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8.0xcaf7471f with:
         gas gas_remaining wei
        args 0, uint32(stor0), 0, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function getERC721Adapter(uint256 arg1) {
    require Mask(1, 247, arg1) == 0x80000000000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(stor0))
    call address(stor0).0xec9d633d with:
         gas gas_remaining wei
        args Mask(64, 192, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require ext_code.size(0x3c4e07e512564ef756426c826bb0e2e821665161)
    delegate 0x3c4e07e512564ef756426c826bb0e2e821665161.0x14f4a5c with:
         gas gas_remaining wei
        args 0, uint32(stor0), address(arg1), address(arg2), arg3, arg4, 192, arg5.length, arg5[all]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function isApproved(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8)
    delegate 0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8.0xcaf7471f with:
         gas gas_remaining wei
        args 0, uint32(stor0), arg3, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function deployERC721Adapter(uint256 arg1, string arg2) {
    require ext_code.size(0x5f224cdd7f644d834218f86176eff19979cd1b5d)
    delegate 0x5f224cdd7f644d834218f86176eff19979cd1b5d.0x3b90d1ba with:
         gas gas_remaining wei
        args 0, uint32(stor0), arg1, 0, 128, arg2.length, arg2[all]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[12 len 20]
}

function nonFungibleOfOwnerByIndex(uint256 arg1, address arg2, uint256 arg3) {
    require ext_code.size(0x87d89db90afdfb04979ec3832234daf5532de56b)
    delegate 0x87d89db90afdfb04979ec3832234daf5532de56b.0x25d6b26 with:
         gas gas_remaining wei
        args 0, uint32(stor0), arg1, address(arg2), arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function melt(uint256[] arg1, uint256[] arg2) {
    require ext_code.size(0x3c4e07e512564ef756426c826bb0e2e821665161)
    delegate 0x3c4e07e512564ef756426c826bb0e2e821665161.0xbe460500 with:
         gas gas_remaining wei
        args 0, uint32(stor0), 96, (32 * arg1.length) + 128, arg1.length, call.data[arg1 + 36 len 32 * arg1.length], arg2.length, call.data[arg2 + 36 len 32 * arg2.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function deployERC20Adapter(uint256 arg1, uint8 arg2, string arg3) {
    require ext_code.size(0x5f224cdd7f644d834218f86176eff19979cd1b5d)
    delegate 0x5f224cdd7f644d834218f86176eff19979cd1b5d.0x3b90d1ba with:
         gas gas_remaining wei
        args 0, uint32(stor0), arg1, arg2 << 248, 128, arg3.length, arg3[all]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[12 len 20]
}

function releaseETH(address arg1, uint256 arg2) {
    require ext_code.size(address(stor0))
    call address(stor0).0xd5009584 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function batchTransfer(address arg1, uint256[] arg2, uint256[] arg3) {
    require ext_code.size(0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8)
    delegate 0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8.0xeb3b43dd with:
         gas gas_remaining wei
        args 0, uint32(stor0), address(arg1), 128, (32 * arg2.length) + 160, arg2.length, call.data[arg2 + 36 len 32 * arg2.length], arg3.length, call.data[arg3 + 36 len 32 * arg3.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function batchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4) {
    require ext_code.size(0x3c4e07e512564ef756426c826bb0e2e821665161)
    delegate 0x3c4e07e512564ef756426c826bb0e2e821665161.0x630a1758 with:
         gas gas_remaining wei
        args 0, uint32(stor0), address(arg1), address(arg2), 160, (32 * arg3.length) + 192, arg3.length, call.data[arg3 + 36 len 32 * arg3.length], arg4.length, call.data[arg4 + 36 len 32 * arg4.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function create(string arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5, uint16 arg6, uint8 arg7, uint256[3] arg8, bool arg9) {
    require arg7 <= 2
    require ext_code.size(0x2c76c620c0648d40e3dce840cb6ec675a7826477)
    delegate 0x2c76c620c0648d40e3dce840cb6ec675a7826477.0x748e850e with:
         gas gas_remaining wei
        args 0, uint32(stor0), 384, arg2, arg3, address(arg4), arg5, arg6 << 240, arg7 << 248, call.data[228 len 96], bool(cd[324]), arg1.length, arg1[all]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function retire(address arg1) {
    require ext_code.size(address(stor0))
    call address(stor0).0xd5009584 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(address(stor0))
    call address(stor0).0xbd143872 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Retire(block.number, arg1);
}

function releaseERC721(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(address(stor0))
    call address(stor0).0xd5009584 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args this.address, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function typeCount() {
    require ext_code.size(address(stor0))
    call address(stor0).0x645cca84 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor0))
    call address(stor0).0x8e628636 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    return (2 * ext_call.return_data[0])
}

function safeBatchTransfer(address arg1, uint256[] arg2, uint256[] arg3, bytes arg4) {
    require ext_code.size(0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8)
    delegate 0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8.0x200e3de6 with:
         gas gas_remaining wei
        args 0, uint32(stor0), address(arg1), 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, call.data[arg2 + 36 len 32 * arg2.length], arg3.length, call.data[arg3 + 36 len 32 * arg3.length], arg4.length, arg4[all]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function releaseERC20(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(address(stor0))
    call address(stor0).0xd5009584 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function multicastTransfer(address[] arg1, uint256[] arg2, uint256[] arg3) {
    require ext_code.size(0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8)
    delegate 0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8.0xbff16071 with:
         gas gas_remaining wei
        args 0, uint32(stor0), 128, (32 * arg1.length) + 160, (32 * arg1.length) + (32 * arg2.length) + 192, arg1.length, call.data[arg1 + 36 len 32 * arg1.length], arg2.length, call.data[arg2 + 36 len 32 * arg2.length], arg3.length, call.data[arg3 + 36 len 32 * arg3.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function releaseERC1155(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require ext_code.size(address(stor0))
    call address(stor0).0xd5009584 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(arg1)
    call arg1.0xfe99049a with:
         gas gas_remaining wei
        args 0, uint32(this.address), address(arg2), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function batchApprove(address arg1, uint256[] arg2, uint256[] arg3, uint256[] arg4) {
    require ext_code.size(0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8)
    delegate 0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8.0x20d7754a with:
         gas gas_remaining wei
        args 0, uint32(stor0), address(arg1), 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, call.data[arg2 + 36 len 32 * arg2.length], arg3.length, call.data[arg3 + 36 len 32 * arg3.length], arg4.length, call.data[arg4 + 36 len 32 * arg4.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferSettings(uint256 arg1) {
    require ext_code.size(0x2c76c620c0648d40e3dce840cb6ec675a7826477)
    delegate 0x2c76c620c0648d40e3dce840cb6ec675a7826477.0xb370e739 with:
         gas gas_remaining wei
        args address(stor0), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require delegate.return_data[0] <= 2
    require delegate.return_data[32] <= 5
    return delegate.return_data[31 len 1], 
           delegate.return_data[32] << 248,
           delegate.return_data[64],
           delegate.return_data[96],
           delegate.return_data[128]
}

function updateName(uint256 arg1, string arg2) {
    require ext_code.size(address(stor0))
    call address(stor0).0xd48e638a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(address(stor0))
    call address(stor0).0xfe55932a with:
         gas gas_remaining wei
        args Mask(64, 192, arg1), Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit UpdateName(arg1);
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require ext_code.size(0x3c4e07e512564ef756426c826bb0e2e821665161)
    delegate 0x3c4e07e512564ef756426c826bb0e2e821665161.'L}%' with:
         gas gas_remaining wei
        args Mask(224, 0, 'L}%'), uint32(stor0), address(arg1), address(arg2), Array(len=(32 * arg3.length) + (32 * arg4.length) + 256, data=arg3.length, call.data[arg3 + 36 len 32 * arg3.length], arg4.length, call.data[arg4 + 36 len 32 * arg4.length], arg5.length, arg5[all]), (32 * arg3.length) + 224
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function assign(uint256 arg1, address arg2) {
    require ext_code.size(address(stor0))
    call address(stor0).0xd48e638a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(0x2c76c620c0648d40e3dce840cb6ec675a7826477)
    delegate 0x2c76c620c0648d40e3dce840cb6ec675a7826477.0x6add6a01 with:
         gas gas_remaining wei
        args address(stor0), arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function setMeltFee(uint256 arg1, uint16 arg2) {
    require ext_code.size(address(stor0))
    call address(stor0).0xd48e638a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(0x2c76c620c0648d40e3dce840cb6ec675a7826477)
    delegate 0x2c76c620c0648d40e3dce840cb6ec675a7826477.0x9ba9e0a7 with:
         gas gas_remaining wei
        args address(stor0), arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function setTransferFee(uint256 arg1, uint256 arg2) {
    require ext_code.size(address(stor0))
    call address(stor0).0xd48e638a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8)
    delegate 0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8.0x32ead744 with:
         gas gas_remaining wei
        args address(stor0), arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function releaseReserve(uint256 arg1, uint128 arg2) {
    require ext_code.size(address(stor0))
    call address(stor0).0xd48e638a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(0x2c76c620c0648d40e3dce840cb6ec675a7826477)
    delegate 0x2c76c620c0648d40e3dce840cb6ec675a7826477.0xfba6f0f4 with:
         gas gas_remaining wei
        args address(stor0), arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function decreaseMaxMeltFee(uint256 arg1, uint16 arg2) {
    require ext_code.size(address(stor0))
    call address(stor0).0xd48e638a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(0x2c76c620c0648d40e3dce840cb6ec675a7826477)
    delegate 0x2c76c620c0648d40e3dce840cb6ec675a7826477.0xc7209e4a with:
         gas gas_remaining wei
        args address(stor0), arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function decreaseMaxTransferFee(uint256 arg1, uint256 arg2) {
    require ext_code.size(address(stor0))
    call address(stor0).0xd48e638a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8)
    delegate 0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8.0x7b5cd724 with:
         gas gas_remaining wei
        args address(stor0), arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function setTransferable(uint256 arg1, uint8 arg2) {
    require ext_code.size(address(stor0))
    call address(stor0).0xd48e638a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require arg2 <= 2
    require ext_code.size(0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8)
    delegate 0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8.0x4db8e97f with:
         gas gas_remaining wei
        args address(stor0), arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf(uint256 arg1, address arg2) {
    require ext_code.size(address(stor0))
    if not uint64(arg1):
        call address(stor0).0xb0a79459 with:
             gas gas_remaining wei
            args arg1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0]
    call address(stor0).'}hcy' with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 == ext_call.return_data[12 len 20]:
        return 1
    else:
        return 0
}

function setURI(uint256 arg1, string arg2) {
    require ext_code.size(address(stor0))
    call address(stor0).0xd48e638a with:
         gas gas_remaining wei
        args Mask(64, 192, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(0x3c4e07e512564ef756426c826bb0e2e821665161)
    delegate 0x3c4e07e512564ef756426c826bb0e2e821665161.0xef93508 with:
         gas gas_remaining wei
        args 0, uint32(stor0), arg1, 96, arg2.length, arg2[all]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function nonFungibleTypeByIndex(uint256 arg1) {
    require ext_code.size(address(stor0))
    call address(stor0).0x645cca84 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        revert with 0, 'idx'
    require ext_code.size(address(stor0))
    call address(stor0).0x745c8b45 with:
         gas gas_remaining wei
        args 0, 0, arg1 + 1 % 281474976710656, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return uint8(ext_call.return_data[0]), 0, arg1 + 1 % 281474976710656, 0
}

function setWhitelisted(uint256 arg1, address arg2, address arg3, bool arg4) {
    require ext_code.size(address(stor0))
    call address(stor0).0xd48e638a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8)
    delegate 0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8.0xccca063 with:
         gas gas_remaining wei
        args 0, uint32(stor0), arg1, address(arg2), arg3, arg4
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function safeMulticastTransfer(address[] arg1, uint256[] arg2, uint256[] arg3, bytes arg4) {
    require ext_code.size(0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8)
    delegate 0xe23e75c8ca2a1e6c24fbb509a9379b68c5a267a8.0xc736ed38 with:
         gas gas_remaining wei
        args 0, uint32(stor0), 160, (32 * arg1.length) + 192, (32 * arg1.length) + (32 * arg2.length) + 224, (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256, arg1.length, call.data[arg1 + 36 len 32 * arg1.length], arg2.length, call.data[arg2 + 36 len 32 * arg2.length], arg3.length, call.data[arg3 + 36 len 32 * arg3.length], arg4.length, arg4[all]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function mintNonFungibles(uint256 arg1, address[] arg2) {
    require ext_code.size(address(stor0))
    call address(stor0).0xd48e638a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(0x87d89db90afdfb04979ec3832234daf5532de56b)
    delegate 0x87d89db90afdfb04979ec3832234daf5532de56b.0x621b0df6 with:
         gas gas_remaining wei
        args 0, uint32(stor0), arg1, 96, arg2.length, call.data[arg2 + 36 len 32 * arg2.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function multicastTransferFrom(address[] arg1, address[] arg2, uint256[] arg3, uint256[] arg4) {
    require ext_code.size(0x3c4e07e512564ef756426c826bb0e2e821665161)
    delegate 0x3c4e07e512564ef756426c826bb0e2e821665161.0xa6428de6 with:
         gas gas_remaining wei
        args 0, uint32(stor0), 160, (32 * arg1.length) + 192, (32 * arg1.length) + (32 * arg2.length) + 224, (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256, arg1.length, call.data[arg1 + 36 len 32 * arg1.length], arg2.length, call.data[arg2 + 36 len 32 * arg2.length], arg3.length, call.data[arg3 + 36 len 32 * arg3.length], arg4.length, call.data[arg4 + 36 len 32 * arg4.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function createTrade(uint256[] arg1, uint128[] arg2, uint256[] arg3, uint128[] arg4, address arg5) {
    require ext_code.size(0x515e8153dd76ac48b0f4967197a4d7f8e6eed7d7)
    delegate 0x515e8153dd76ac48b0f4967197a4d7f8e6eed7d7.0x89d216b2 with:
         gas gas_remaining wei
        args 0, uint32(stor0), 192, (32 * arg1.length) + 224, (32 * arg1.length) + (32 * arg2.length) + 256, (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 288, address(arg5), arg1.length, call.data[arg1 + 36 len 32 * arg1.length], arg2.length, call.data[arg2 + 36 len 32 * arg2.length], arg3.length, call.data[arg3 + 36 len 32 * arg3.length], arg4.length, call.data[arg4 + 36 len 32 * arg4.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function mintFungibles(uint256 arg1, address[] arg2, uint256[] arg3) {
    require ext_code.size(address(stor0))
    call address(stor0).0xd48e638a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(0x23c5a0ff727eda408b1baa33e91897b2c5284804)
    delegate 0x23c5a0ff727eda408b1baa33e91897b2c5284804.0x54c11483 with:
         gas gas_remaining wei
        args 0, uint32(stor0), arg1, 128, (32 * arg2.length) + 160, arg2.length, call.data[arg2 + 36 len 32 * arg2.length], arg3.length, call.data[arg3 + 36 len 32 * arg3.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function mintNonFungiblesWithData(uint256 arg1, address[] arg2, uint128[] arg3) {
    require ext_code.size(address(stor0))
    call address(stor0).0xd48e638a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(0x87d89db90afdfb04979ec3832234daf5532de56b)
    delegate 0x87d89db90afdfb04979ec3832234daf5532de56b.0xbc65de05 with:
         gas gas_remaining wei
        args 0, uint32(stor0), arg1, 128, (32 * arg2.length) + 160, arg2.length, call.data[arg2 + 36 len 32 * arg2.length], arg3.length, call.data[arg3 + 36 len 32 * arg3.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function supportsInterface(bytes4 arg1) {
    if 0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7895564500000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xa7737b3a00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xe8f2a1e600000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xd51745c200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x95a1bd4b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xc2a743b000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0xfde77a9700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function initialize(address arg1, address arg2) {
    if address(stor0):
        revert with 0, '0'
    address(stor0) = arg1
    require ext_code.size(arg1)
    call arg1.0xd5009584 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'manager'
    require ext_code.size(address(stor0))
    call address(stor0).0x42f6b6ce with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        require ext_code.size(address(stor0))
        call address(stor0).0xbd143872 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Initialize(block.number, address(arg1), arg2);
}

function symbol(uint256 arg1) {
    mem[96] = 0x6418413c00000000000000000000000000000000000000000000000000000000
    mem[100] = Mask(64, 192, arg1)
    require ext_code.size(address(stor0))
    call address(stor0).0x6418413c with:
         gas gas_remaining wei
        args Mask(64, 192, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(64, 192, arg1) >> 32
    require mem[96 len 4], Mask(64, 192, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(64, 192, arg1) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], Mask(64, 192, arg1) >> 32 + 96] + mem[96 len 4], Mask(64, 192, arg1) >> 32 + 32 and mem[mem[96 len 4], Mask(64, 192, arg1) >> 32 + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_4 + 96]
    _8 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 160 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _8 % 32:
        return 32, mem[ceil32(return_data.size) + 128 len _8 + 32]
    mem[floor32(_8) + ceil32(return_data.size) + 160] = mem[floor32(_8) + ceil32(return_data.size) + -(_8 % 32) + 192 len _8 % 32]
    return 32, mem[ceil32(return_data.size) + 128 len floor32(_8) + 64]
}

function uri(uint256 arg1) {
    mem[96] = 0x49a1808900000000000000000000000000000000000000000000000000000000
    mem[100] = address(stor0)
    mem[132] = arg1
    require ext_code.size(0x3c4e07e512564ef756426c826bb0e2e821665161)
    delegate 0x3c4e07e512564ef756426c826bb0e2e821665161.0x49a18089 with:
         gas gas_remaining wei
        args address(stor0), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 0, stor0)
    require mem[96 len 4], Mask(224, 0, stor0) <= 4294967296
    require mem[96 len 4], Mask(224, 0, stor0) + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], Mask(224, 0, stor0) + 96] + mem[96 len 4], Mask(224, 0, stor0) + 32 and mem[mem[96 len 4], Mask(224, 0, stor0) + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_4 + 96]
    _8 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 160 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _8 % 32:
        return 32, mem[ceil32(return_data.size) + 128 len _8 + 32]
    mem[floor32(_8) + ceil32(return_data.size) + 160] = mem[floor32(_8) + ceil32(return_data.size) + -(_8 % 32) + 192 len _8 % 32]
    return 32, mem[ceil32(return_data.size) + 128 len floor32(_8) + 64]
}

function typeData(uint256 arg1) {
    mem[96 len 128] = code.data[24384 len 128]
    mem[224] = ' %V!'
    mem[228] = address(stor0)
    mem[260] = arg1
    require ext_code.size(0x2c76c620c0648d40e3dce840cb6ec675a7826477)
    delegate 0x2c76c620c0648d40e3dce840cb6ec675a7826477.' %V!' with:
         gas gas_remaining wei
        args address(stor0), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 480
    _5 = mem[224 len 4], Mask(224, 0, stor0)
    require mem[224 len 4], Mask(224, 0, stor0) <= 4294967296
    require mem[224 len 4], Mask(224, 0, stor0) + 32 <= return_data.size
    require return_data.size >= mem[mem[224 len 4], Mask(224, 0, stor0) + 224] + mem[224 len 4], Mask(224, 0, stor0) + 32 and mem[mem[224 len 4], Mask(224, 0, stor0) + 224] <= 4294967296
    _8 = uint32(arg1), mem[292 len 28]
    _9 = mem[320]
    _10 = mem[352]
    _11 = mem[384]
    _12 = mem[416]
    _13 = mem[448]
    _14 = mem[480]
    _15 = mem[512]
    _16 = mem[672]
    mem[ceil32(return_data.size) + 256] = Mask(160, 32, arg1) >> 32
    mem[ceil32(return_data.size) + 288] = _8
    mem[ceil32(return_data.size) + 320] = uint16(_9)
    mem[ceil32(return_data.size) + 352] = uint16(_10)
    mem[ceil32(return_data.size) + 384] = address(_11)
    mem[ceil32(return_data.size) + 416] = _12
    mem[ceil32(return_data.size) + 448] = _13
    mem[ceil32(return_data.size) + 480] = _14
    require _15 <= 2
    mem[ceil32(return_data.size) + 512] = uint8(_15)
    mem[ceil32(return_data.size) + 544 len 128] = mem[544 len 128]
    mem[ceil32(return_data.size) + 672] = bool(_16)
    mem[ceil32(return_data.size) + 224] = 480
    mem[ceil32(return_data.size) + 704] = mem[_5 + 224]
    _20 = mem[_5 + 224]
    mem[ceil32(return_data.size) + 736 len ceil32(mem[_5 + 224])] = mem[_5 + 256 len ceil32(mem[_5 + 224])]
    if not _20 % 32:
        return 480, 
               Mask(160, 32, arg1) << 64,
               _8,
               _9 << 240,
               _10 << 240,
               address(_11),
               _12,
               _13,
               _14,
               _15 << 248,
               mem[ceil32(return_data.size) + 544 len 128],
               bool(_16),
               mem[ceil32(return_data.size) + 704 len _20 + 32]
    mem[floor32(_20) + ceil32(return_data.size) + 736] = mem[floor32(_20) + ceil32(return_data.size) + -(_20 % 32) + 768 len _20 % 32]
    return 480, 
           Mask(160, 32, arg1) << 64,
           _8,
           _9 << 240,
           _10 << 240,
           address(_11),
           _12,
           _13,
           _14,
           _15 << 248,
           mem[ceil32(return_data.size) + 544 len 128],
           bool(_16),
           mem[ceil32(return_data.size) + 704 len floor32(_20) + 64]
}

function name(uint256 arg1) {
    require ext_code.size(address(stor0))
    call address(stor0).0x745c8b45 with:
         gas gas_remaining wei
        args Mask(64, 192, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint8(arg1) != ext_call.return_data[0]:
        return ' '
    if not Mask(1, 247, arg1):
        mem[96] = 0x6b8ff57400000000000000000000000000000000000000000000000000000000
        mem[100] = Mask(64, 192, arg1)
        require ext_code.size(address(stor0))
        call address(stor0).0x6b8ff574 with:
             gas gas_remaining wei
            args Mask(64, 192, arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _27 = mem[96 len 4], Mask(64, 192, arg1) >> 32
        require mem[96 len 4], Mask(64, 192, arg1) >> 32 <= 4294967296
        require mem[96 len 4], Mask(64, 192, arg1) >> 32 + 32 <= return_data.size
        require return_data.size >= mem[mem[96 len 4], Mask(64, 192, arg1) >> 32 + 96] + mem[96 len 4], Mask(64, 192, arg1) >> 32 + 32 and mem[mem[96 len 4], Mask(64, 192, arg1) >> 32 + 96] <= 4294967296
        mem[ceil32(return_data.size) + 96] = 32
        mem[ceil32(return_data.size) + 128] = mem[_27 + 96]
        _36 = mem[_27 + 96]
        mem[ceil32(return_data.size) + 160 len ceil32(mem[_27 + 96])] = mem[_27 + 128 len ceil32(mem[_27 + 96])]
        if not _36 % 32:
            return 32, mem[ceil32(return_data.size) + 128 len _36 + 32]
        mem[floor32(_36) + ceil32(return_data.size) + 160] = mem[floor32(_36) + ceil32(return_data.size) + -(_36 % 32) + 192 len _36 % 32]
        return 32, mem[ceil32(return_data.size) + 128 len floor32(_36) + 64]
    if uint64(arg1) <= 0:
        mem[96] = 0x6b8ff57400000000000000000000000000000000000000000000000000000000
        mem[100] = Mask(64, 192, arg1)
        require ext_code.size(address(stor0))
        call address(stor0).0x6b8ff574 with:
             gas gas_remaining wei
            args Mask(64, 192, arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _31 = mem[96 len 4], Mask(64, 192, arg1) >> 32
        require mem[96 len 4], Mask(64, 192, arg1) >> 32 <= 4294967296
        require mem[96 len 4], Mask(64, 192, arg1) >> 32 + 32 <= return_data.size
        require return_data.size >= mem[mem[96 len 4], Mask(64, 192, arg1) >> 32 + 96] + mem[96 len 4], Mask(64, 192, arg1) >> 32 + 32 and mem[mem[96 len 4], Mask(64, 192, arg1) >> 32 + 96] <= 4294967296
        mem[ceil32(return_data.size) + 96] = 32
        mem[ceil32(return_data.size) + 128] = mem[_31 + 96]
        _39 = mem[_31 + 96]
        mem[ceil32(return_data.size) + 160 len ceil32(mem[_31 + 96])] = mem[_31 + 128 len ceil32(mem[_31 + 96])]
        if not _39 % 32:
            return 32, mem[ceil32(return_data.size) + 128 len _39 + 32]
        mem[floor32(_39) + ceil32(return_data.size) + 160] = mem[floor32(_39) + ceil32(return_data.size) + -(_39 % 32) + 192 len _39 % 32]
        return 32, mem[ceil32(return_data.size) + 128 len floor32(_39) + 64]
    mem[132] = (Mask(64, 192, arg1) or uint64(arg1)) - 1 / 2
    require ext_code.size(address(stor0))
    call address(stor0).0xbd02d0f5 with:
         gas gas_remaining wei
        args sha3('idat', Mask(224, 32, (Mask(64, 192, arg1) or uint64(arg1)) - 1) >> 32, Mask(31, 1, (Mask(64, 192, arg1) or uint64(arg1)) - 1))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(arg1):
        if uint128(ext_call.return_data[0]) != uint128(arg1):
            return 32, 36, 
                   'idat',
                   (Mask(64, 192, arg1) or uint64(arg1)) - 1 / 2,
                   0,
                   Mask(32, -256, 'idat', (Mask(64, 192, arg1) or uint64(arg1)) - 1 / 2, 0) << 256
        mem[164] = 0x6b8ff57400000000000000000000000000000000000000000000000000000000
        mem[168] = Mask(64, 192, arg1)
        require ext_code.size(address(stor0))
        call address(stor0).0x6b8ff574 with:
             gas gas_remaining wei
            args Mask(64, 192, arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[164 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 164
        require return_data.size >= 32
        _118 = mem[164 len 4], Mask(64, 192, arg1) >> 32
        require mem[164 len 4], Mask(64, 192, arg1) >> 32 <= 4294967296
        require mem[164 len 4], Mask(64, 192, arg1) >> 32 + 32 <= return_data.size
        require return_data.size >= mem[mem[164 len 4], Mask(64, 192, arg1) >> 32 + 164] + mem[164 len 4], Mask(64, 192, arg1) >> 32 + 32 and mem[mem[164 len 4], Mask(64, 192, arg1) >> 32 + 164] <= 4294967296
        mem[ceil32(return_data.size) + 164] = 32
        mem[ceil32(return_data.size) + 196] = mem[_118 + 164]
        _132 = mem[_118 + 164]
        mem[ceil32(return_data.size) + 228 len ceil32(mem[_118 + 164])] = mem[_118 + 196 len ceil32(mem[_118 + 164])]
        if not _132 % 32:
            return 32, mem[ceil32(return_data.size) + 196 len _132 + 32]
        mem[floor32(_132) + ceil32(return_data.size) + 228] = mem[floor32(_132) + ceil32(return_data.size) + -(_132 % 32) + 260 len _132 % 32]
        return 32, mem[ceil32(return_data.size) + 196 len floor32(_132) + 64]
    if Mask(128, 128, ext_call.return_data[0]) >> 128 != uint128(arg1):
        return 32, 36, 
               'idat',
               (Mask(64, 192, arg1) or uint64(arg1)) - 1 / 2,
               0,
               Mask(32, -256, 'idat', (Mask(64, 192, arg1) or uint64(arg1)) - 1 / 2, 0) << 256
    mem[164] = 0x6b8ff57400000000000000000000000000000000000000000000000000000000
    mem[168] = Mask(64, 192, arg1)
    require ext_code.size(address(stor0))
    call address(stor0).0x6b8ff574 with:
         gas gas_remaining wei
        args Mask(64, 192, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[164 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 164
    require return_data.size >= 32
    _120 = mem[164 len 4], Mask(64, 192, arg1) >> 32
    require mem[164 len 4], Mask(64, 192, arg1) >> 32 <= 4294967296
    require mem[164 len 4], Mask(64, 192, arg1) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[164 len 4], Mask(64, 192, arg1) >> 32 + 164] + mem[164 len 4], Mask(64, 192, arg1) >> 32 + 32 and mem[mem[164 len 4], Mask(64, 192, arg1) >> 32 + 164] <= 4294967296
    mem[ceil32(return_data.size) + 164] = 32
    mem[ceil32(return_data.size) + 196] = mem[_120 + 164]
    _135 = mem[_120 + 164]
    mem[ceil32(return_data.size) + 228 len ceil32(mem[_120 + 164])] = mem[_120 + 196 len ceil32(mem[_120 + 164])]
    if not _135 % 32:
        return 32, mem[ceil32(return_data.size) + 196 len _135 + 32]
    mem[floor32(_135) + ceil32(return_data.size) + 228] = mem[floor32(_135) + ceil32(return_data.size) + -(_135 % 32) + 260 len _135 % 32]
    return 32, mem[ceil32(return_data.size) + 196 len floor32(_135) + 64]
}

function transferFees(uint256 arg1, uint256 arg2, address arg3, address arg4) {
    if arg1 and ' ':
        return arg2, arg2, 0, 0, 0
    require ext_code.size(address(stor0))
    call address(stor0) with:
       funct Mask(32, 224, 'su') >> 224
         gas gas_remaining wei
        args Mask(64, 192, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[31 len 1] <= 5
    if ext_call.return_data[31 len 1] <= 0:
        return arg2, arg2, 0, 0, 0
    require ext_code.size(address(stor0))
    call address(stor0).0xd48e638a with:
         gas gas_remaining wei
        args Mask(64, 192, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 == ext_call.return_data[12 len 20]:
        return arg2, arg2, 0, 0, 0
    if ext_call.return_data[12 len 20] == arg4:
        return arg2, arg2, 0, 0, 0
    require ext_code.size(address(stor0))
    call address(stor0).0x20ec4a86 with:
         gas gas_remaining wei
        args Mask(64, 192, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor0))
    call address(stor0).0xa432df0 with:
         gas gas_remaining wei
        args Mask(64, 192, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor0))
    call address(stor0).0xf8057921 with:
         gas gas_remaining wei
        args Mask(64, 192, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require uint8(ext_call.return_data[0]) <= 5
    if uint8(ext_call.return_data[0]) == 2:
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                require ext_code.size(address(stor0))
                call address(stor0).0x5dbc33e7 with:
                     gas gas_remaining wei
                    args Mask(64, 192, arg1), address(arg3), 4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return arg2, arg2, ext_call.return_data[0], 0, 0
            require arg2 * ext_call.return_data[0] / ext_call.return_data[0] == arg2
            require ext_code.size(address(stor0))
            call address(stor0).0x5dbc33e7 with:
                 gas gas_remaining wei
                args Mask(64, 192, arg1), address(arg3), 4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        else:
            require arg2 * ext_call.return_data[0] / ext_call.return_data[0] == arg2
            if not ext_call.return_data[0]:
                require ext_code.size(address(stor0))
                call address(stor0).0x5dbc33e7 with:
                     gas gas_remaining wei
                    args Mask(64, 192, arg1), address(arg3), 4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    return arg2, arg2, ext_call.return_data[0], arg2 * ext_call.return_data[0], 0
                return arg2, arg2, ext_call.return_data[0], 0, 0
            require arg2 * ext_call.return_data[0] / ext_call.return_data[0] == arg2
            require ext_code.size(address(stor0))
            call address(stor0).0x5dbc33e7 with:
                 gas gas_remaining wei
                args Mask(64, 192, arg1), address(arg3), 4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return arg2, arg2, ext_call.return_data[0], arg2 * ext_call.return_data[0], arg2 * ext_call.return_data[0]
        return arg2, arg2, ext_call.return_data[0], 0, arg2 * ext_call.return_data[0]
    require uint8(ext_call.return_data[0]) <= 5
    if uint8(ext_call.return_data[0]) != 3:
        require uint8(ext_call.return_data[0]) <= 5
        if uint8(ext_call.return_data[0]) != 4:
            require ext_code.size(address(stor0))
            call address(stor0).0x5dbc33e7 with:
                 gas gas_remaining wei
                args Mask(64, 192, arg1), address(arg3), 4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return arg2, arg2, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
            return arg2, arg2, ext_call.return_data[0], 0, ext_call.return_data[0]
        if not arg2:
            if not arg2:
                require ext_code.size(address(stor0))
                call address(stor0).0x5dbc33e7 with:
                     gas gas_remaining wei
                    args Mask(64, 192, arg1), address(arg3), 4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return arg2, arg2, arg1, 0, 0
            require ext_call.return_data[0] * arg2 / arg2 == ext_call.return_data[0]
            require ext_code.size(address(stor0))
            call address(stor0).0x5dbc33e7 with:
                 gas gas_remaining wei
                args Mask(64, 192, arg1), address(arg3), 4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        else:
            require ext_call.return_data[0] * arg2 / arg2 == ext_call.return_data[0]
            if not arg2:
                require ext_code.size(address(stor0))
                call address(stor0).0x5dbc33e7 with:
                     gas gas_remaining wei
                    args Mask(64, 192, arg1), address(arg3), 4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    return arg2, arg2, arg1, ext_call.return_data[0] * arg2 / 10000, 0
                return arg2, arg2, arg1, 0, 0
            require ext_call.return_data[0] * arg2 / arg2 == ext_call.return_data[0]
            require ext_code.size(address(stor0))
            call address(stor0).0x5dbc33e7 with:
                 gas gas_remaining wei
                args Mask(64, 192, arg1), address(arg3), 4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return arg2, arg2, arg1, ext_call.return_data[0] * arg2 / 10000, ext_call.return_data[0] * arg2 / 10000
        return arg2, arg2, arg1, 0, ext_call.return_data[0] * arg2 / 10000
    if not arg2:
        require 0 <= arg2
        if not arg2:
            require 0 <= arg2
            require ext_code.size(address(stor0))
            call address(stor0).0x5dbc33e7 with:
                 gas gas_remaining wei
                args Mask(64, 192, arg1), address(arg3), 4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return arg2, arg2, arg1, 0, 0
        require ext_call.return_data[0] * arg2 / arg2 == ext_call.return_data[0]
        require ext_call.return_data[0] * arg2 / 10000 <= arg2
        require ext_code.size(address(stor0))
        call address(stor0).0x5dbc33e7 with:
             gas gas_remaining wei
            args Mask(64, 192, arg1), address(arg3), 4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        require ext_call.return_data[0] * arg2 / arg2 == ext_call.return_data[0]
        require ext_call.return_data[0] * arg2 / 10000 <= arg2
        if not arg2:
            require 0 <= arg2
            require ext_code.size(address(stor0))
            call address(stor0).0x5dbc33e7 with:
                 gas gas_remaining wei
                args Mask(64, 192, arg1), address(arg3), 4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return arg2 - (ext_call.return_data[0] * arg2 / 10000), arg2, arg1, ext_call.return_data[0] * arg2 / 10000, 0
            return arg2, arg2, arg1, 0, 0
        require ext_call.return_data[0] * arg2 / arg2 == ext_call.return_data[0]
        require ext_call.return_data[0] * arg2 / 10000 <= arg2
        require ext_code.size(address(stor0))
        call address(stor0).0x5dbc33e7 with:
             gas gas_remaining wei
            args Mask(64, 192, arg1), address(arg3), 4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return arg2 - (ext_call.return_data[0] * arg2 / 10000), 
                   arg2 - (ext_call.return_data[0] * arg2 / 10000),
                   arg1,
                   ext_call.return_data[0] * arg2 / 10000,
                   ext_call.return_data[0] * arg2 / 10000
    return arg2, arg2 - (ext_call.return_data[0] * arg2 / 10000), arg1, 0, ext_call.return_data[0] * arg2 / 10000
}



}
