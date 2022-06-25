contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor3;
uint8 stor4; offset 160
address stor4;
uint256 stor5;
address sub_f035a9a0Address;
address sub_966a67ddAddress;
address sub_415b7251Address;

function sub_415b7251(?) {
    return sub_415b7251Address
}

function owner() {
    return owner
}

function isTest() {
    return bool(uint8(stor4.field_160))
}

function sub_966a67dd(?) {
    return sub_966a67ddAddress
}

function sub_f035a9a0(?) {
    return sub_f035a9a0Address
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function getCurrentTime() {
    if not uint8(stor4.field_160):
        return block.timestamp
    return stor5
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setCurrentTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require uint8(stor4.field_160)
    stor5 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawErc20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_d308c903(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 448
    require ('cd', 4)[9] < 2
    require ('cd', 4)[11] <= test266151307()
    require cd[4] + ('cd', 4)[11] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[11] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 576 <= test266151307() and ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 576 >= 544
    require cd[4] + ('cd', 4)[11] + cd[(cd[4] + ('cd', 4)[11] + 4)] + 36 <= calldata.size
    mem[576 len cd[(cd[4] + ('cd', 4)[11] + 4)]] = call.data[cd[4] + ('cd', 4)[11] + 36 len cd[(cd[4] + ('cd', 4)[11] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 576] = 0
    require ('cd', 4)[12] <= test266151307()
    require cd[4] + ('cd', 4)[12] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[12] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + 608 <= test266151307() and ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + 608 >= 576
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 576] = cd[(cd[4] + ('cd', 4)[12] + 4)]
    require cd[4] + ('cd', 4)[12] + cd[(cd[4] + ('cd', 4)[12] + 4)] + 36 <= calldata.size
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 608 len cd[(cd[4] + ('cd', 4)[12] + 4)]] = call.data[cd[4] + ('cd', 4)[12] + 36 len cd[(cd[4] + ('cd', 4)[12] + 4)]]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[12] + 4)] + 608] = 0
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + 1188] = msg.sender
    require ext_code.size(sub_f035a9a0Address)
    staticcall sub_f035a9a0Address.0x3a3ab672 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + 1184] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + 608] = msg.sender
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(return_data.size) + 1188] = address(('cd', 4)[4])
    require ext_code.size(sub_966a67ddAddress)
    staticcall sub_966a67ddAddress.0x3a3ab672 with:
            gas gas_remaining wei
           args address(('cd', 4)[4])
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(return_data.size) + 1184] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + 928] = address(('cd', 4)[4])
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (2 * ceil32(return_data.size)) + 1188] = address(('cd', 4)[7])
    require ext_code.size(sub_415b7251Address)
    staticcall sub_415b7251Address.0x3a3ab672 with:
            gas gas_remaining wei
           args address(('cd', 4)[7])
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (2 * ceil32(return_data.size)) + 1184] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + 1024] = address(('cd', 4)[7])
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + 768] = ('cd', 4).length
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + 800] = ('cd', 4)[0]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + 832] = ('cd', 4)[1]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + 864] = ('cd', 4)[2]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + 896] = ('cd', 4)[3]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + 960] = ('cd', 4)[5]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + 992] = ('cd', 4)[6]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + 1056] = ('cd', 4)[8]
    require ('cd', 4)[9] <= 1
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + 1088] = ('cd', 4)[9]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + 1120] = ('cd', 4)[10]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + 736] = address(stor4.field_0)
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + 672] = stor2
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + 704] = stor3
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + 640] = stor2
    if not uint8(stor4.field_160):
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + 1152] = block.timestamp
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 1184 len 14558] = code.data[6579 len 14558]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 15742] = msg.sender
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 15774] = stor2
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 15806] = stor2
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 15838] = stor3
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 15870] = address(stor4.field_0)
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 15902] = ('cd', 4).length
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 15934] = ('cd', 4)[0]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 15966] = ('cd', 4)[1]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 15998] = ('cd', 4)[2]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 16030] = ('cd', 4)[3]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 16062] = address(('cd', 4)[4])
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 16094] = ('cd', 4)[5]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 16126] = ('cd', 4)[6]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 16158] = address(('cd', 4)[7])
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 16190] = ('cd', 4)[8]
        require ('cd', 4)[9] < 2
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 16222] = ('cd', 4)[9]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 16254] = ('cd', 4)[10]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 16286] = block.timestamp
    else:
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + 1152] = stor5
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 1184 len 14558] = code.data[6579 len 14558]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 15742] = msg.sender
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 15774] = stor2
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 15806] = stor2
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 15838] = stor3
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 15870] = address(stor4.field_0)
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 15902] = ('cd', 4).length
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 15934] = ('cd', 4)[0]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 15966] = ('cd', 4)[1]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 15998] = ('cd', 4)[2]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 16030] = ('cd', 4)[3]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 16062] = address(('cd', 4)[4])
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 16094] = ('cd', 4)[5]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 16126] = ('cd', 4)[6]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 16158] = address(('cd', 4)[7])
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 16190] = ('cd', 4)[8]
        require ('cd', 4)[9] < 2
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 16222] = ('cd', 4)[9]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 16254] = ('cd', 4)[10]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 16286] = stor5
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 16318] = 640
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 16382] = cd[(cd[4] + ('cd', 4)[11] + 4)]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 16414 len ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])] = call.data[cd[4] + ('cd', 4)[11] + 36 len cd[(cd[4] + ('cd', 4)[11] + 4)]], mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 576 len ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) - cd[(cd[4] + ('cd', 4)[11] + 4)]]
    if ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) > cd[(cd[4] + ('cd', 4)[11] + 4)]:
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 16414] = 0
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 16350] = ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 672
    mem[(2 * ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 16414] = Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 608 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])]
    mem[(2 * ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 16446 len ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 608 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])])] = mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 608 len ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 608 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])])]
    if ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 608 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])]) > Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 608 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])]:
        mem[(2 * ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 608 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])] + 16446] = 0
    create contract with 0 wei
                    code: mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 1184 len ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 608 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])]) + 15262]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 1216] = msg.sender
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 1248] = 0x8014b1dc00000000000000000000000000000000000000000000000000000000
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 1252] = 64
    idx = 0
    s = ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 1216
    t = ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 1348
    while idx < 1:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor1)
    call stor1.0x8014b1dc with:
         gas gas_remaining wei
        args Array(len=1, data=mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + (4 * ceil32(return_data.size)) + 1348]), address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}



}
