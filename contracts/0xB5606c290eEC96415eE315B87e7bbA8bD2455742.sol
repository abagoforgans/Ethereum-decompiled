contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address stor1;
mapping of uint256 stor2;
mapping of address ownerOf;
array of address stor4;
mapping of uint256 stor5;

function ownerOf(address arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[address(arg1)]
    return ownerOf[address(arg1)]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function request(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor1[address(arg1)]:
        revert with 0, 'Token already requested'
    stor1[address(arg1)] = msg.sender
    stor2[address(arg1)] = msg.value
    emit 0x24cffc39: msg.sender, address(arg1), msg.value
}

function sendEther(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only contract owner can call this method'
    call arg1 with:
       value arg2 wei
         gas arg3 wei
    if not ext_call.success:
        revert with 0, 'Failed to transfer ether'
    emit EtherTransfer(address(arg1), arg2);
}

function reject(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only contract owner can call this method'
    if not stor1[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Requested token not found. Perhaps token is already accepted/rejected'
    stor1[address(arg1)] = 0
    stor2[address(arg1)] = 0
    emit 0x443c146b: stor1[address(arg1)], address(arg1), stor2[address(arg1)]
    stor5[stor1[address(arg1)]] += stor2[address(arg1)]
}

function accept(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only contract owner can call this method'
    if not stor1[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Requested token not found. Perhaps token is already accepted/rejected'
    ownerOf[address(arg1)] = stor1[address(arg1)]
    uint256(stor4[stor1[address(arg1)]])++
    address(stor4[stor1[address(arg1)]][uint256(stor4[stor1[address(arg1)]])]) = arg1
    stor1[address(arg1)] = 0
    stor2[address(arg1)] = 0
    emit Accept(ownerOf[address(arg1)], address(arg1), stor2[address(arg1)]);
}

function sub_fbeab75e(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only contract owner can call this method'
    if not stor1[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Requested token not found. Perhaps token is already accepted/rejected'
    stor1[address(arg1)] = 0
    stor2[address(arg1)] = 0
    emit 0x443c146b: stor1[address(arg1)], address(arg1), stor2[address(arg1)]
    call stor1[address(arg1)] with:
       value stor2[address(arg1)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Refund(stor1[address(arg1)], stor2[address(arg1)]);
}



}
