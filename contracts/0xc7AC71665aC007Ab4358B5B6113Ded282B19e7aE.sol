contract main {




// =====================  Runtime code  =====================


uint256 creationBlock;
uint256 creationTime;
address owner;
mapping of uint8 stor3;
uint8 stor4; offset 160
uint128 stor4; offset 160
address sub_ff16fb6bAddress;
array of address stor5;
mapping of uint8 stor6;
array of struct userEventsLength;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function creationBlock() payable {
    return creationBlock
}

function getEventsLength() payable {
    return stor5.length
}

function restricted() payable {
    return bool(uint8(stor4.field_160))
}

function owner() payable {
    return owner
}

function getUserEventsLength(address arg1) payable {
    require calldata.size - 4 >= 32
    return userEventsLength[address(arg1)].field_0
}

function creationTime() payable {
    return creationTime
}

function sub_ff16fb6b(?) payable {
    return sub_ff16fb6bAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function isApproved() payable {
    if stor3[msg.sender]:
        return bool(stor3[msg.sender])
    return (msg.sender == owner)
}

function revokeApproval(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor3[address(arg1)] = 0
}

function approveAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor3[address(arg1)] = 1
}

function sub_46655f44(?) payable {
    require calldata.size - 4 >= 32
    if not stor3[msg.sender]:
        require msg.sender == owner
    sub_ff16fb6bAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setRestricted(bool arg1) payable {
    require calldata.size - 4 >= 32
    if not stor3[msg.sender]:
        require msg.sender == owner
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg1)
}

function addEventToUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require stor6[msg.sender]
    userEventsLength[address(arg1)].field_0++
    userEventsLength[address(arg1)][userEventsLength[address(arg1)].field_0].field_0 = msg.sender or Mask(96, 160, userEventsLength[address(arg1)][userEventsLength[address(arg1)].field_0].field_0)
}

function registerEvent() payable {
    if uint8(stor4.field_160):
        require ext_code.size(sub_ff16fb6bAddress)
        staticcall sub_ff16fb6bAddress.hasRole(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args tx.origin, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe43726561746f72206e6f74207065726d697474656420746f207265676973746572206576656e74,
                        mem[204 len 24]
    stor5.length++
    stor36B6[stor5.length] = msg.sender or Mask(96, 160, stor36B6[stor5.length])
    stor6[msg.sender] = 1
    emit NewVerityEvent(msg.sender);
}

function getEventsByIds(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[3045 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require mem[(32 * idx) + 128] < stor5.length
        mem[0] = 5
        require idx < arg1.length
        mem[(32 * arg1.length) + (32 * idx) + 160] = stor5[mem[(32 * idx) + 128]]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 160] = 64
    mem[(64 * arg1.length) + 224] = arg1.length
    mem[(64 * arg1.length) + 256 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(64 * arg1.length) + 192] = (32 * arg1.length) + 96
    mem[(98 * arg1.length) + 256] = arg1.length
    mem[(98 * arg1.length) + 288 len floor32(arg1.length)] = mem[(32 * arg1.length) + 160 len floor32(arg1.length)]
    return memory
      from (64 * arg1.length) + 160
       len (162 * arg1.length) + 128
}

function getUserEvents() payable {
    if not userEventsLength[msg.sender].field_0:
        mem[(32 * userEventsLength[msg.sender].field_0) + 128] = 32
        mem[(32 * userEventsLength[msg.sender].field_0) + 160] = userEventsLength[msg.sender].field_0
        mem[(32 * userEventsLength[msg.sender].field_0) + 192 len floor32(userEventsLength[msg.sender].field_0)] = mem[128 len floor32(userEventsLength[msg.sender].field_0)]
        return memory
          from (32 * userEventsLength[msg.sender].field_0) + 128
           len (96 * userEventsLength[msg.sender].field_0) + 64
    mem[128] = userEventsLength[msg.sender].field_0
    idx = 128
    s = 0
    while (32 * userEventsLength[msg.sender].field_0) + 96 > idx:
        mem[idx + 32] = userEventsLength[msg.sender][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * userEventsLength[msg.sender].field_0) + 192 len floor32(userEventsLength[msg.sender].field_0)] = mem[128 len floor32(userEventsLength[msg.sender].field_0)]
    return Array(len=userEventsLength[msg.sender].field_0, data=mem[128 len floor32(userEventsLength[msg.sender].field_0)], mem[(32 * userEventsLength[msg.sender].field_0) + floor32(userEventsLength[msg.sender].field_0) + 192 len (32 * userEventsLength[msg.sender].field_0) - floor32(userEventsLength[msg.sender].field_0)]), 
}

function getUserEventsByIds(address arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg2.length
    if arg2.length:
        mem[(32 * arg2.length) + 160 len 32 * arg2.length] = code.data[3045 len 32 * arg2.length]
    idx = 0
    while idx < arg2.length:
        mem[32] = 7
        require idx < arg2.length
        require mem[(32 * idx) + 128] < userEventsLength[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 7)
        require idx < arg2.length
        mem[(32 * arg2.length) + (32 * idx) + 160] = userEventsLength[address(arg1)][mem[(32 * idx) + 128]].field_0
        idx = idx + 1
        continue 
    mem[(64 * arg2.length) + 160] = 64
    mem[(64 * arg2.length) + 224] = arg2.length
    mem[(64 * arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(64 * arg2.length) + 192] = (32 * arg2.length) + 96
    mem[(98 * arg2.length) + 256] = arg2.length
    mem[(98 * arg2.length) + 288 len floor32(arg2.length)] = mem[(32 * arg2.length) + 160 len floor32(arg2.length)]
    return memory
      from (64 * arg2.length) + 160
       len (162 * arg2.length) + 128
}



}
