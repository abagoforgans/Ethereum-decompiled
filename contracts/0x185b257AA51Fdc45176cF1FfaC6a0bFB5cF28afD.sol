contract main {




// =====================  Runtime code  =====================


const LIMIT = 10


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
uint8 stor3;
address heroAssetAddress;
mapping of uint8 stor6;

function heroAsset() payable {
    return heroAssetAddress
}

function checkIsPastEvent(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function isPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor2[address(arg1)])
}

function paused() payable {
    return bool(stor3)
}

function isOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor1[address(arg1)])
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setHeroAssetAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    heroAssetAddress = arg1
}

function unpause() payable {
    require msg.sender
    require stor2[address(msg.sender)]
    require stor3
    stor3 = 0
    emit Unpaused(msg.sender);
}

function pause() payable {
    require msg.sender
    require stor2[address(msg.sender)]
    require not stor3
    stor3 = 1
    emit Paused(msg.sender);
}

function renouncePauser() payable {
    require msg.sender
    require stor2[address(msg.sender)]
    stor2[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function setPastEventHash(bytes32 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor1[address(msg.sender)]
    stor6[arg1] = uint8(arg2)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit OperatorAdded(arg1);
}

function removeOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
    emit OperatorRemoved(arg1);
}

function addPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor2[address(msg.sender)]
    require arg1
    require not stor2[address(arg1)]
    stor2[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function withdrawEther() payable {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function depositHero(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require not stor3
    require ext_code.size(heroAssetAddress)
    call heroAssetAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xcf92acd0: arg1, block.timestamp, msg.sender
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function mintHero(address arg1, uint256 arg2, bytes32 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender
    require stor1[address(msg.sender)]
    require not stor6[arg3]
    require ext_code.size(heroAssetAddress)
    call heroAssetAddress.mintHeroAsset(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xe853b0a9: arg2, block.timestamp, 0, arg1, arg3
    stor6[arg3] = 1
}

function withdrawHeroToAssetOwnerByAdmin(address arg1, uint256 arg2, bytes32 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender
    require stor1[address(msg.sender)]
    require not stor6[arg3]
    require ext_code.size(heroAssetAddress)
    call heroAssetAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xe853b0a9: arg2, block.timestamp, 1, arg1, arg3
    stor6[arg3] = 1
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function transferAllTokensOfGateway(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(heroAssetAddress)
    staticcall heroAssetAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = mem[96]
    while idx > 0:
        require ext_code.size(heroAssetAddress)
        staticcall heroAssetAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(this.address), idx - 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = arg1
        mem[164] = ext_call.return_data[0]
        require ext_code.size(heroAssetAddress)
        call heroAssetAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx - 1
        continue 
}



}
