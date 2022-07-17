contract main {




// =====================  Runtime code  =====================


const MIGRATION_LOCK_PERIOD = (672 * 24 * 3600)

const GRACE_PERIOD = (2160 * 24 * 3600)


mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
address owner;
uint256 transferPeriodEnds;
address ensAddress;
uint256 baseNode;
address previousRegistrarAddress;
mapping of uint8 stor10;
mapping of uint256 nameExpires;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return approved[arg1]
}

function ens() payable {
    return ensAddress
}

function transferPeriodEnds() payable {
    return transferPeriodEnds
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require nameExpires[arg1] > block.timestamp
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function previousRegistrar() payable {
    return previousRegistrarAddress
}

function nameExpires(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return nameExpires[arg1]
}

function controllers(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function baseNode() payable {
    return baseNode
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor4[address(arg1)][address(arg2)])
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

function addController(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor10[address(arg1)] = 1
    emit ControllerAdded(arg1);
}

function removeController(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor10[address(arg1)] = 0
    emit ControllerRemoved(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 != msg.sender
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require nameExpires[arg2] > block.timestamp
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function setResolver(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(ensAddress)
    call ensAddress.setResolver(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args baseNode, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function available(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if nameExpires[arg1] + (2160 * 24 * 3600) >= block.timestamp:
        return 0
    if block.timestamp > transferPeriodEnds:
        return (block.timestamp > transferPeriodEnds)
    require ext_code.size(previousRegistrarAddress)
    staticcall previousRegistrarAddress.state(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 5
    return not ext_call.return_data[0]
}

function renew(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(ensAddress)
    staticcall ensAddress.owner(bytes32 arg1) with:
            gas gas_remaining wei
           args baseNode
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == this.address
    require stor10[address(msg.sender)]
    require nameExpires[arg1] + (2160 * 24 * 3600) >= block.timestamp
    require nameExpires[arg1] > 0
    nameExpires[arg1] += arg2
    emit NameRenewed(nameExpires[arg1], arg1);
    return nameExpires[arg1]
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require nameExpires[arg3] > block.timestamp
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require nameExpires[arg3] > block.timestamp
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    if Mask(32, 224, arg1) == Mask(32, 224, sha3('supportsInterface(bytes4)')):
        return True
    if Mask(32, 224, arg1) == Mask(32, 224, sha3('balanceOf(uint256)') xor sha3('ownerOf(uint256)') xor sha3('approve(address,uint256)') xor sha3('getApproved(uint256)') xor sha3('setApprovalForAll(address,bool)') xor sha3(0x296973417070726f766564466f72416c6c28616464726573732c61646472657373) xor sha3(0xfe7472616e7366657246726f6d28616464726573732c616464726573732c75696e74323536) xor sha3(0x29736166655472616e7366657246726f6d28616464726573732c616464726573732c75696e74323536) xor sha3(0x29736166655472616e7366657246726f6d28616464726573732c616464726573732c75696e743235362c6279746573)):
        return True
    return (Mask(32, 224, arg1) == Mask(32, 224, sha3('reclaim(uint256,address)')))
}

function reclaim(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(ensAddress)
    staticcall ensAddress.owner(bytes32 arg1) with:
            gas gas_remaining wei
           args baseNode
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == this.address
    require nameExpires[arg1] > block.timestamp
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        require ownerOf[arg1]
        if approved[arg1] != msg.sender:
            require stor4[stor1[arg1]][address(msg.sender)]
    require ext_code.size(ensAddress)
    call ensAddress.setSubnodeOwner(bytes32 arg1, bytes32 arg2, address arg3) with:
         gas gas_remaining wei
        args baseNode, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require nameExpires[arg3] > block.timestamp
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require nameExpires[arg3] > block.timestamp
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require nameExpires[arg3] > block.timestamp
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require nameExpires[arg3] > block.timestamp
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function register(uint256 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(ensAddress)
    staticcall ensAddress.owner(bytes32 arg1) with:
            gas gas_remaining wei
           args baseNode
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == this.address
    require stor10[address(msg.sender)]
    require nameExpires[arg1] + (2160 * 24 * 3600) < block.timestamp
    if block.timestamp <= transferPeriodEnds:
        require ext_code.size(previousRegistrarAddress)
        staticcall previousRegistrarAddress.state(bytes32 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= 5
        require not ext_call.return_data[0]
    require arg3 > 0
    nameExpires[arg1] = block.timestamp + arg3
    if ownerOf[arg1]:
        require nameExpires[arg1] > block.timestamp
        require ownerOf[arg1]
        require nameExpires[arg1] > block.timestamp
        require ownerOf[arg1]
        require ownerOf[arg1] == ownerOf[arg1]
        if approved[arg1]:
            approved[arg1] = 0
        require 1 <= balanceOf[stor1[arg1]]
        balanceOf[stor1[arg1]]--
        ownerOf[arg1] = 0
        emit Transfer(ownerOf[arg1], 0, arg1);
    require arg2
    require not ownerOf[arg1]
    ownerOf[arg1] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    emit Transfer(0, arg2, arg1);
    require ext_code.size(ensAddress)
    call ensAddress.setSubnodeOwner(bytes32 arg1, bytes32 arg2, address arg3) with:
         gas gas_remaining wei
        args baseNode, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit NameRegistered((block.timestamp + arg3), arg1, arg2);
    return (block.timestamp + arg3)
}

function acceptRegistrarTransfer(bytes32 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(ensAddress)
    staticcall ensAddress.owner(bytes32 arg1) with:
            gas gas_remaining wei
           args baseNode
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == this.address
    require msg.sender == previousRegistrarAddress
    require not nameExpires[arg1]
    require transferPeriodEnds > block.timestamp
    require ext_code.size(previousRegistrarAddress)
    staticcall previousRegistrarAddress.entries(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[64] < block.timestamp - (672 * 24 * 3600)
    require ext_code.size(arg2)
    staticcall arg2.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.closeDeed(uint256 arg1) with:
         gas gas_remaining wei
        args 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    nameExpires[arg1] = transferPeriodEnds
    require address(ext_call.return_data[0])
    require not ownerOf[arg1]
    ownerOf[arg1] = address(ext_call.return_data[0])
    require balanceOf[address(ext_call.return_data[0])] + 1 >= balanceOf[address(ext_call.return_data[0])]
    balanceOf[address(ext_call.return_data[0])]++
    emit Transfer(0, address(ext_call.return_data[0]), arg1);
    require ext_code.size(ensAddress)
    call ensAddress.setSubnodeOwner(bytes32 arg1, bytes32 arg2, address arg3) with:
         gas gas_remaining wei
        args baseNode, arg1, address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit NameMigrated(transferPeriodEnds, arg1, address(ext_call.return_data[0]));
    emit NameRegistered(transferPeriodEnds, arg1, address(ext_call.return_data[0]));
}



}
