contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
array of struct mintRequests;
array of struct burnRequests;
mapping of address stor99;

function getBurnRequestStringMap(uint256 arg1, string arg2) {
    return uint256(stor[_39][0 len stor[_39].length])
}

function getMintRequestsLength() {
    return mintRequests.length
}

function mintRequests(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < mintRequests.length
    require uint8(mintRequests[arg1].field_0) <= 3
    return uint8(mintRequests[arg1].field_0), uint256(mintRequests[arg1].field_256)
}

function burnRequests(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < burnRequests.length
    require uint8(burnRequests[arg1].field_0) <= 3
    return uint8(burnRequests[arg1].field_0), uint256(burnRequests[arg1].field_256)
}

function getMintRequestStringMap(uint256 arg1, string arg2) {
    return uint256(stor[_39][0 len stor[_39].length])
}

function getBurnRequestsLength() {
    return burnRequests.length
}

function owner() {
    return owner
}

function getBurnRequestStatus(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= burnRequests.length:
        revert with 0, 'Not a valid burn request ID'
    require uint8(burnRequests[arg1].field_0) <= 3
    return uint8(burnRequests[arg1].field_0)
}

function authorized(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function getMintRequestStatus(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= mintRequests.length:
        revert with 0, 'Not a valid mint request ID'
    require uint8(mintRequests[arg1].field_0) <= 3
    return uint8(mintRequests[arg1].field_0)
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if stor1[address(arg1)]:
        revert with 0, 'Already authorized'
    if owner == arg1:
        revert with 0, 'Owner cannot be authorized'
    stor1[address(arg1)] = 1
}

function deauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if owner == arg1:
        revert with 0, 'Owner cannot be deauthorized'
    if not stor1[address(arg1)]:
        revert with 0, 'Already unauthorized'
    stor1[address(arg1)] = 0
}

function sub_47d1f2a6(?) {
    require calldata.size - 4 >= 64
    if owner == msg.sender:
        revert with 0, 32, 23, 0xfe4f776e6572206973206e6f7420617574686f72697a65640000000000000000
    if not stor1[address(msg.sender)]:
        revert with 0, 'Not authorized'
    if arg1 >= burnRequests.length:
        revert with 0, 'Not a valid burn request ID'
    require arg2 <= 3
    uint8(burnRequests[arg1].field_0) = arg2
}

function sub_634c1c46(?) {
    require calldata.size - 4 >= 64
    if owner == msg.sender:
        revert with 0, 32, 23, 0xfe4f776e6572206973206e6f7420617574686f72697a65640000000000000000
    if not stor1[address(msg.sender)]:
        revert with 0, 'Not authorized'
    if arg1 >= mintRequests.length:
        revert with 0, 'Not a valid mint request ID'
    require arg2 <= 3
    uint8(mintRequests[arg1].field_0) = arg2
}

function createBurnRequest() {
    if owner == msg.sender:
        revert with 0, 32, 23, 0xfe4f776e6572206973206e6f7420617574686f72697a65640000000000000000
    if not stor1[address(msg.sender)]:
        revert with 0, 'Not authorized'
    burnRequests.length++
    uint8(burnRequests[burnRequests.length].field_0) = 0
    burnRequests[burnRequests.length].field_256 % 1 = 0
    uint256(burnRequests[burnRequests.length].field_256) = burnRequests.length
    return burnRequests.length
}

function createMintRequest() {
    if owner == msg.sender:
        revert with 0, 32, 23, 0xfe4f776e6572206973206e6f7420617574686f72697a65640000000000000000
    if not stor1[address(msg.sender)]:
        revert with 0, 'Not authorized'
    mintRequests.length++
    uint8(mintRequests[mintRequests.length].field_0) = 0
    mintRequests[mintRequests.length].field_256 % 1 = 0
    uint256(mintRequests[mintRequests.length].field_256) = mintRequests.length
    return mintRequests.length
}

function getMintRequestUintMap(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg1 >= mintRequests.length:
        revert with 0, 'Not a valid mint request ID'
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = (5 * arg1) + sha3(2) + 3
    mem[ceil32(arg2.length) + 128] = uint256(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)])
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function getBurnRequestUintMap(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg1 >= burnRequests.length:
        revert with 0, 'Not a valid burn request ID'
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = (5 * arg1) + sha3(3) + 3
    mem[ceil32(arg2.length) + 128] = uint256(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)])
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function getBurnRequestAddressMap(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg1 >= burnRequests.length:
        revert with 0, 'Not a valid burn request ID'
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = (5 * arg1) + sha3(3) + 2
    mem[ceil32(arg2.length) + 128] = address(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)])
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function getMintRequestAddressMap(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg1 >= mintRequests.length:
        revert with 0, 'Not a valid mint request ID'
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = (5 * arg1) + sha3(2) + 2
    mem[ceil32(arg2.length) + 128] = address(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)])
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function setBurnRequestUintMap(uint256 arg1, string arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if owner == msg.sender:
        revert with 0, 32, 23, 0xfe4f776e6572206973206e6f7420617574686f72697a65640000000000000000
    if not stor1[address(msg.sender)]:
        revert with 0, 'Not authorized'
    if arg1 >= burnRequests.length:
        revert with 0, 'Not a valid burn request ID'
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = (5 * arg1) + sha3(3) + 3
    uint256(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)]) = arg3
}

function setMintRequestUintMap(uint256 arg1, string arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if owner == msg.sender:
        revert with 0, 32, 23, 0xfe4f776e6572206973206e6f7420617574686f72697a65640000000000000000
    if not stor1[address(msg.sender)]:
        revert with 0, 'Not authorized'
    if arg1 >= mintRequests.length:
        revert with 0, 'Not a valid mint request ID'
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = (5 * arg1) + sha3(2) + 3
    uint256(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)]) = arg3
}

function setMintRequestAddressMap(uint256 arg1, string arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if owner == msg.sender:
        revert with 0, 32, 23, 0xfe4f776e6572206973206e6f7420617574686f72697a65640000000000000000
    if not stor1[address(msg.sender)]:
        revert with 0, 'Not authorized'
    if arg1 >= mintRequests.length:
        revert with 0, 'Not a valid mint request ID'
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = (5 * arg1) + sha3(2) + 2
    address(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)]) = arg3
}

function setBurnRequestAddressMap(uint256 arg1, string arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if owner == msg.sender:
        revert with 0, 32, 23, 0xfe4f776e6572206973206e6f7420617574686f72697a65640000000000000000
    if not stor1[address(msg.sender)]:
        revert with 0, 'Not authorized'
    if arg1 >= burnRequests.length:
        revert with 0, 'Not a valid burn request ID'
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = (5 * arg1) + sha3(3) + 2
    address(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)]) = arg3
}

function setBurnRequestStringMap(uint256 arg1, string arg2, string arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 160] = 0
    if owner == msg.sender:
        revert with 0, 32, 23, 0xfe4f776e6572206973206e6f7420617574686f72697a65640000000000000000
    if not stor1[address(msg.sender)]:
        revert with 0, 'Not authorized'
    if arg1 >= burnRequests.length:
        revert with 0, 'Not a valid burn request ID'
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = (5 * arg1) + sha3(3) + 4
    uint256(stor[mem[ceil32(arg2.length) + arg3.length + 192 len arg2.length - arg3.length + ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)][]) = Array(len=Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)], data=mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
}

function setMintRequestStringMap(uint256 arg1, string arg2, string arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 160] = 0
    if owner == msg.sender:
        revert with 0, 32, 23, 0xfe4f776e6572206973206e6f7420617574686f72697a65640000000000000000
    if not stor1[address(msg.sender)]:
        revert with 0, 'Not authorized'
    if arg1 >= mintRequests.length:
        revert with 0, 'Not a valid mint request ID'
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = (5 * arg1) + sha3(2) + 4
    uint256(stor[mem[ceil32(arg2.length) + arg3.length + 192 len arg2.length - arg3.length + ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)][]) = Array(len=Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)], data=mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
}



}
