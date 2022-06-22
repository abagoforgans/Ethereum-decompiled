contract main {




// =====================  Runtime code  =====================


#
#  - sub_61346679(?)
#
function _fallback() payable {
    revert
}

function sub_d7d1c4d5(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(msg.sender)
    call msg.sender.getOpenOrderInfo(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(msg.sender)
    call msg.sender.getOrderDetails(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(arg1)
    call arg1.filled(bytes32 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[64]:
        require ext_call.return_data[96]
        require ext_code.size(arg1)
        call arg1.cancelled(bytes32 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            return address(arg2), address(ext_call.return_data[32]), 0, 0
        if ext_call.return_data[96] - ext_call.return_data[0] > ext_call.return_data[96]:
            revert with 0, 'ds-math-sub-underflow'
        if not ext_call.return_data[96] - ext_call.return_data[0]:
            return address(arg2), address(ext_call.return_data[32]), 0, 0
        if ext_call.return_data[64] - (0 / ext_call.return_data[96]) > ext_call.return_data[64]:
            revert with 0, 'ds-math-sub-underflow'
        if ext_call.return_data[96] - ext_call.return_data[0] > ext_call.return_data[96]:
            revert with 0, 'ds-math-sub-underflow'
        return address(arg2), 
               address(ext_call.return_data[32]),
               ext_call.return_data[64] - (0 / ext_call.return_data[96]),
               ext_call.return_data[96] - ext_call.return_data[0]
    require ext_call.return_data[64]
    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
        revert with 0, 'ds-math-mul-overflow'
    require ext_call.return_data[96]
    require ext_code.size(arg1)
    call arg1.cancelled(bytes32 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        return address(arg2), address(ext_call.return_data[32]), 0, 0
    if ext_call.return_data[96] - ext_call.return_data[0] > ext_call.return_data[96]:
        revert with 0, 'ds-math-sub-underflow'
    if not ext_call.return_data[96] - ext_call.return_data[0]:
        return address(arg2), address(ext_call.return_data[32]), 0, 0
    if ext_call.return_data[64] - (ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[96]) > ext_call.return_data[64]:
        revert with 0, 'ds-math-sub-underflow'
    if ext_call.return_data[96] - ext_call.return_data[0] > ext_call.return_data[96]:
        revert with 0, 'ds-math-sub-underflow'
    return address(arg2), 
           address(ext_call.return_data[32]),
           ext_call.return_data[64] - (ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[96]),
           ext_call.return_data[96] - ext_call.return_data[0]
}

function sub_79705be7(?) {
    require calldata.size - 4 >= 608
    require calldata.size > 67
    require 228 <= calldata.size
    idx = 0
    s = 36
    t = 96
    while idx < 6:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require calldata.size > 259
    require 484 <= calldata.size
    idx = 0
    s = 228
    t = 288
    while idx < 8:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[516] <= test266151307()
    require calldata.size > cd[516] + 35
    require ('cd', 516).length <= test266151307()
    require ceil32(('cd', 516).length) + 576 >= 544 and ceil32(('cd', 516).length) + 576 <= test266151307()
    require cd[516] + ('cd', 516).length + 36 <= calldata.size
    mem[576 len ('cd', 516).length] = call.data[cd[516] + 36 len ('cd', 516).length]
    mem[('cd', 516).length + 576] = 0
    require cd[548] <= test266151307()
    require calldata.size > cd[548] + 35
    require ('cd', 548).length <= test266151307()
    require ceil32(('cd', 548).length) + 608 >= 576 and ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 608 <= test266151307()
    mem[ceil32(('cd', 516).length) + 576] = ('cd', 548).length
    require cd[548] + ('cd', 548).length + 36 <= calldata.size
    mem[ceil32(('cd', 516).length) + 608 len ('cd', 548).length] = call.data[cd[548] + 36 len ('cd', 548).length]
    mem[('cd', 548).length + ceil32(('cd', 516).length) + 608] = 0
    require cd[580] <= test266151307()
    require calldata.size > cd[580] + 35
    require ('cd', 580).length <= test266151307()
    require ceil32(('cd', 580).length) + 640 >= 608 and ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 640 <= test266151307()
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 608] = ('cd', 580).length
    require cd[580] + ('cd', 580).length + 36 <= calldata.size
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 640 len ('cd', 580).length] = call.data[cd[580] + 36 len ('cd', 580).length]
    mem[('cd', 580).length + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 640] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 640] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 672] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 704] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 736] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 768] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 800] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 832] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 864] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 896] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 928] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 960] = 96
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 992] = 96
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 1024] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 1056] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 1088] = 0
    require ext_code.size(this.address)
    call this.address.hub() with:
         gas gas_remaining wei
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 1120] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ext_call.return_data[12 len 20])
    call ext_call.return_data[12 len 20].manager() with:
         gas gas_remaining wei
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + ceil32(return_data.size) + 1120] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Manager must be sender'
    require ext_code.size(this.address)
    call this.address.hub() with:
         gas gas_remaining wei
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (2 * ceil32(return_data.size)) + 1120] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ext_call.return_data[12 len 20])
    call ext_call.return_data[12 len 20].isShutDown() with:
         gas gas_remaining wei
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (4 * ceil32(return_data.size)) + 1120] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Hub must not be shut down'
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (6 * ceil32(return_data.size)) + 1124] = mem[172 len 20]
    require ext_code.size(this.address)
    call this.address.0xcc460a02 with:
         gas gas_remaining wei
        args address(mem[160])
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (6 * ceil32(return_data.size)) + 1120] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < ext_call.return_data[0]:
        revert with 0, 'Cooldown for the maker asset not reached'
    require ext_code.size(this.address)
    call this.address.hub() with:
         gas gas_remaining wei
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1120] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1120] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1152] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1184] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1216] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1248] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1280] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1312] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1344] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1376] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1408] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1440] = 96
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1472] = 96
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1504] = mem[108 len 20]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1536] = mem[140 len 20]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1568] = mem[236 len 20]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1600] = mem[268 len 20]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1632] = mem[288]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1664] = mem[320]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1696] = mem[352]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1728] = mem[384]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1760] = mem[416]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1792] = mem[448]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1824] = 544
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1856] = ceil32(('cd', 516).length) + 576
    if mem[172 len 20] != mem[592 len 20]:
        revert with 0, 'Maker asset data does not match order address in array'
    if mem[204 len 20] != mem[ceil32(('cd', 516).length) + 624 len 20]:
        revert with 0, 'Taker asset data does not match order address in array'
    require ext_code.size(this.address)
    call this.address.updateAndGetQuantityBeingTraded(address arg1) with:
         gas gas_remaining wei
        args address(mem[580])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (10 * ceil32(return_data.size)) + 1892] = mem[592 len 20]
    require ext_code.size(this.address)
    call this.address.isInOpenMakeOrder(address arg1) with:
         gas gas_remaining wei
        args address(mem[580])
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (10 * ceil32(return_data.size)) + 1888] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'This asset is already in an open make order'
    require ext_code.size(this.address)
    call this.address.hub() with:
         gas gas_remaining wei
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (11 * ceil32(return_data.size)) + 1888] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ext_call.return_data[12 len 20])
    call ext_call.return_data[12 len 20].vault() with:
         gas gas_remaining wei
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 1888] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 1924] = mem[288]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(mem[580]), mem[288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 1892] = Mask(32, 224, mem[576])
    require ext_code.size(address(cd[4]))
    call address(cd[4]).getAssetProxy(bytes4 arg1) with:
         gas gas_remaining wei
        args Mask(32, 224, mem[576])
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 1888] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 1892] = ext_call.return_data[12 len 20]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 1924] = mem[288]
    require ext_code.size(mem[592 len 20])
    call mem[592 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[12 len 20], mem[288]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 1888] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Maker asset could not be approved'
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 1924] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1516 len 20]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 1956] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1548 len 20]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 1988] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1580 len 20]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 2020] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1612 len 20]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 2052] = mem[288]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 2084] = mem[320]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 2116] = mem[352]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 2148] = mem[384]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 2180] = mem[416]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 2212] = mem[448]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 2244] = 384
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 2308] = ('cd', 516).length
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 2340 len ceil32(('cd', 516).length)] = call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]
    if ceil32(('cd', 516).length) > ('cd', 516).length:
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + ('cd', 516).length + 2340] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 2276] = ceil32(('cd', 516).length) + 416
    mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 2340] = ('cd', 548).length
    mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 2372 len ceil32(('cd', 548).length)] = call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
    if ceil32(('cd', 548).length) > ('cd', 548).length:
        mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + ('cd', 548).length + 2372] = 0
    require ext_code.size(address(cd[4]))
    call address(cd[4]).getOrderInfo(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12) with:
         gas gas_remaining wei
        args 32, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 1924 len 128], mem[288], mem[320], mem[352], mem[384], mem[416], mem[448], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, Mask(8 * ceil32(('cd', 516).length), -(8 * ceil32(('cd', 516).length)) + 256, call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]) << (8 * ceil32(('cd', 516).length)) - 256, ('cd', 548).length, call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 1888 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool(ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (16 * ceil32(return_data.size)) + 1984 <= test266151307())
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (16 * ceil32(return_data.size)) + 1888] = ext_call.return_data[31 len 1]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (16 * ceil32(return_data.size)) + 1920] = ext_call.return_data[32]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (16 * ceil32(return_data.size)) + 1952] = ext_call.return_data[64]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (16 * ceil32(return_data.size)) + 2116 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
    if ceil32(('cd', 580).length) > ('cd', 580).length:
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (16 * ceil32(return_data.size)) + ('cd', 580).length + 2116] = 0
    require ext_code.size(address(cd[4]))
    call address(cd[4]).preSign(bytes32 arg1, address arg2, bytes arg3) with:
         gas gas_remaining wei
        args ext_call.return_data[32], address(this.address), Array(len=('cd', 580).length, data=call.data[cd[580] + 36 len ('cd', 580).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (16 * ceil32(return_data.size)) + 1988] = ext_call.return_data[32]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (16 * ceil32(return_data.size)) + 2020] = this.address
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (16 * ceil32(return_data.size)) + 2052] = 96
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (16 * ceil32(return_data.size)) + 2084] = ('cd', 580).length
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (16 * ceil32(return_data.size)) + 2116 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
    if ceil32(('cd', 580).length) > ('cd', 580).length:
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (16 * ceil32(return_data.size)) + ('cd', 580).length + 2116] = 0
    require ext_code.size(address(cd[4]))
    call address(cd[4]).isValidSignature(bytes32 arg1, address arg2, bytes arg3) with:
         gas gas_remaining wei
        args ext_call.return_data[32], address(this.address), Array(len=('cd', 580).length, data=call.data[cd[580] + 36 len ('cd', 580).length])
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (16 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'INVALID_ORDER_SIGNATURE'
    require ext_code.size(this.address)
    call this.address.hub() with:
         gas gas_remaining wei
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (18 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ext_call.return_data[12 len 20])
    call ext_call.return_data[12 len 20].accounting() with:
         gas gas_remaining wei
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).addAssetToOwnedAssets(address arg1) with:
         gas gas_remaining wei
        args address(mem[ceil32(('cd', 516).length) + 612])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1984] = mem[592 len 20]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2016] = mem[ceil32(('cd', 516).length) + 624 len 20]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2048] = mem[288]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2080] = mem[320]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2112] = 0
    idx = 0
    s = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1984
    t = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2244
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(this.address)
    call this.address.0x195a261f with:
         gas gas_remaining wei
        args address(cd[4]), ext_call.return_data[32], 0, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2244 len 64], mem[288], mem[320], 0 >> 512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(this.address)
    call this.address.0x5202d6d6 with:
         gas gas_remaining wei
        args address(cd[4]), address(mem[580]), address(mem[ceil32(('cd', 516).length) + 612]), ext_call.return_data[32], mem[416]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2144] = 0xc3394ef700000000000000000000000000000000000000000000000000000000
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2148] = ext_call.return_data[32]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2180] = 64
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2212] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1516 len 20]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2244] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1548 len 20]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2276] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1580 len 20]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2308] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1612 len 20]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2340] = mem[288]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2372] = mem[320]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2404] = mem[352]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2436] = mem[384]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2468] = mem[416]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2500] = mem[448]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2532] = 384
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2596] = ('cd', 516).length
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2628 len ceil32(('cd', 516).length)] = call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]
    if ceil32(('cd', 516).length) <= ('cd', 516).length:
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2564] = ceil32(('cd', 516).length) + 416
        mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2628] = Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)]
        mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2660 len ceil32(Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)])] = mem[ceil32(('cd', 516).length) + 608 len ceil32(Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)])]
        if ceil32(Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)]) > Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)]:
            mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)] + 2660] = 0
        require ext_code.size(this.address)
        call this.address.0xc3394ef7 with:
             gas gas_remaining wei
            args ext_call.return_data[32], 64, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2212 len 128], mem[288], mem[320], mem[352], mem[384], mem[416], mem[448], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2628 len ceil32(('cd', 516).length) + ceil32(Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)]) + 32]
    else:
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + ('cd', 516).length + 2628] = 0
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2564] = ceil32(('cd', 516).length) + 416
        mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2628] = Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)]
        mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2660 len ceil32(Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)])] = mem[ceil32(('cd', 516).length) + 608 len ceil32(Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)])]
        if ceil32(Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)]) <= Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)]:
            require ext_code.size(this.address)
            call this.address.0xc3394ef7 with:
                 gas gas_remaining wei
                args ext_call.return_data[32], 64, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2212 len 128], mem[288], mem[320], mem[352], mem[384], mem[416], mem[448], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, Mask(8 * ('cd', 516).length, -(8 * ('cd', 516).length) + 256, call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]) << (8 * ('cd', 516).length) - 256, 0, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + ('cd', 516).length + 2660 len ceil32(('cd', 516).length) + ceil32(Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)]) - ('cd', 516).length]
        else:
            mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)] + 2660] = 0
            require ext_code.size(this.address)
            call this.address.0xc3394ef7 with:
                 gas gas_remaining wei
                args ext_call.return_data[32], 64, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2212 len 128], mem[288], mem[320], mem[352], mem[384], mem[416], mem[448], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2628 len ('cd', 516).length], 0, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + ('cd', 516).length + 2660 len ceil32(('cd', 516).length) + ceil32(Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)]) - ('cd', 516).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e51be6e8(?) {
    require calldata.size - 4 >= 608
    require calldata.size > 67
    require 228 <= calldata.size
    idx = 0
    s = 36
    t = 96
    while idx < 6:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require calldata.size > 259
    require 484 <= calldata.size
    idx = 0
    s = 228
    t = 288
    while idx < 8:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[516] <= test266151307()
    require calldata.size > cd[516] + 35
    require ('cd', 516).length <= test266151307()
    require ceil32(('cd', 516).length) + 576 >= 544 and ceil32(('cd', 516).length) + 576 <= test266151307()
    mem[544] = ('cd', 516).length
    require cd[516] + ('cd', 516).length + 36 <= calldata.size
    mem[576 len ('cd', 516).length] = call.data[cd[516] + 36 len ('cd', 516).length]
    mem[('cd', 516).length + 576] = 0
    require cd[548] <= test266151307()
    require calldata.size > cd[548] + 35
    require ('cd', 548).length <= test266151307()
    require ceil32(('cd', 548).length) + 608 >= 576 and ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 608 <= test266151307()
    mem[ceil32(('cd', 516).length) + 576] = ('cd', 548).length
    require cd[548] + ('cd', 548).length + 36 <= calldata.size
    mem[ceil32(('cd', 516).length) + 608 len ('cd', 548).length] = call.data[cd[548] + 36 len ('cd', 548).length]
    mem[('cd', 548).length + ceil32(('cd', 516).length) + 608] = 0
    require cd[580] <= test266151307()
    require calldata.size > cd[580] + 35
    require ('cd', 580).length <= test266151307()
    require ceil32(('cd', 580).length) + 640 >= 608 and ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 640 <= test266151307()
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 608] = ('cd', 580).length
    require cd[580] + ('cd', 580).length + 36 <= calldata.size
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 640 len ('cd', 580).length] = call.data[cd[580] + 36 len ('cd', 580).length]
    mem[('cd', 580).length + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 640] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 640] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 672] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 704] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 736] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 768] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 800] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 832] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 864] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 896] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 928] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 960] = 96
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 992] = 96
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 1024] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 1056] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 1088] = 0
    require ext_code.size(this.address)
    call this.address.hub() with:
         gas gas_remaining wei
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 1120] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ext_call.return_data[12 len 20])
    call ext_call.return_data[12 len 20].manager() with:
         gas gas_remaining wei
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + ceil32(return_data.size) + 1120] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Manager must be sender'
    require ext_code.size(this.address)
    call this.address.hub() with:
         gas gas_remaining wei
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (2 * ceil32(return_data.size)) + 1120] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ext_call.return_data[12 len 20])
    call ext_call.return_data[12 len 20].isShutDown() with:
         gas gas_remaining wei
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (4 * ceil32(return_data.size)) + 1120] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Hub must not be shut down'
    require ext_code.size(this.address)
    call this.address.hub() with:
         gas gas_remaining wei
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (6 * ceil32(return_data.size)) + 1120] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1120] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1152] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1184] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1216] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1248] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1280] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1312] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1344] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1376] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1408] = 0
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1440] = 96
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1472] = 96
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1504] = mem[108 len 20]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1536] = mem[140 len 20]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1568] = mem[236 len 20]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1600] = mem[268 len 20]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632] = mem[288]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664] = mem[320]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1696] = mem[352]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1728] = mem[384]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1760] = mem[416]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1792] = mem[448]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1824] = 544
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1856] = ceil32(('cd', 516).length) + 576
    _44 = mem[480]
    _45 = mem[580]
    _46 = mem[ceil32(('cd', 516).length) + 612]
    if mem[172 len 20] != mem[592 len 20]:
        revert with 0, 'Maker asset data does not match order address in array'
    if mem[204 len 20] != mem[ceil32(('cd', 516).length) + 624 len 20]:
        revert with 0, 'Taker asset data does not match order address in array'
    require ext_code.size(this.address)
    call this.address.hub() with:
         gas gas_remaining wei
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1888] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ext_call.return_data[12 len 20])
    call ext_call.return_data[12 len 20].vault() with:
         gas gas_remaining wei
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1888] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (10 * ceil32(return_data.size)) + 1924] = mem[480]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(mem[ceil32(('cd', 516).length) + 612]), mem[480]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (10 * ceil32(return_data.size)) + 1892] = Mask(32, 224, mem[ceil32(('cd', 516).length) + 608])
    require ext_code.size(address(cd[4]))
    call address(cd[4]).getAssetProxy(bytes4 arg1) with:
         gas gas_remaining wei
        args Mask(32, 224, mem[ceil32(('cd', 516).length) + 608])
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (10 * ceil32(return_data.size)) + 1888] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (11 * ceil32(return_data.size)) + 1892] = ext_call.return_data[12 len 20]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (11 * ceil32(return_data.size)) + 1924] = mem[480]
    require ext_code.size(mem[ceil32(('cd', 516).length) + 624 len 20])
    call mem[ceil32(('cd', 516).length) + 624 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[12 len 20], mem[480]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (11 * ceil32(return_data.size)) + 1888] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Taker asset could not be approved'
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 1924] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1516 len 20]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 1956] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1548 len 20]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 1988] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1580 len 20]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 2020] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1612 len 20]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 2052] = mem[288]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 2084] = mem[320]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 2116] = mem[352]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 2148] = mem[384]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 2180] = mem[416]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 2212] = mem[448]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 2244] = 384
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 2308] = ('cd', 516).length
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 2340 len ceil32(('cd', 516).length)] = call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]
    if ceil32(('cd', 516).length) <= ('cd', 516).length:
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 2276] = ceil32(('cd', 516).length) + 416
        mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 2340] = ('cd', 548).length
        mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 2372 len ceil32(('cd', 548).length)] = call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
        if ceil32(('cd', 548).length) <= ('cd', 548).length:
            require ext_code.size(address(cd[4]))
            call address(cd[4]).getOrderInfo(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12) with:
                 gas gas_remaining wei
                args 32, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 1924 len 128], mem[288], mem[320], mem[352], mem[384], mem[416], mem[448], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, Mask(8 * ceil32(('cd', 516).length), -(8 * ceil32(('cd', 516).length)) + 256, call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]) << (8 * ceil32(('cd', 516).length)) - 256, ('cd', 548).length, call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 1888 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require bool(ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 1984 <= test266151307())
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 1888] = ext_call.return_data[31 len 1]
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 1920] = ext_call.return_data[32]
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 1952] = ext_call.return_data[64]
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 1984] = 0
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2016] = 0
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2048] = 0
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2080] = 0
            _1571 = mem[384]
            if mem[384] <= 0:
                require ext_code.size(mem[592 len 20])
                call mem[592 len 20].0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2212] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1516 len 20]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2244] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1548 len 20]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2276] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1580 len 20]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2308] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1612 len 20]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2340] = mem[288]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2372] = mem[320]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2404] = mem[352]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2436] = mem[384]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2468] = mem[416]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2500] = mem[448]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2532] = 384
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2596] = ('cd', 516).length
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2628 len ceil32(('cd', 516).length)] = call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]
                if ceil32(('cd', 516).length) > ('cd', 516).length:
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + ('cd', 516).length + 2628] = 0
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2564] = ceil32(('cd', 516).length) + 416
                mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2628] = ('cd', 548).length
                mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2660 len ceil32(('cd', 548).length)] = call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
                if ceil32(('cd', 548).length) <= ('cd', 548).length:
                    mem[(2 * ceil32(('cd', 516).length)) + (2 * ceil32(('cd', 548).length)) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2660] = ('cd', 580).length
                    mem[(2 * ceil32(('cd', 516).length)) + (2 * ceil32(('cd', 548).length)) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2692 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                    if ceil32(('cd', 580).length) > ('cd', 580).length:
                        mem[(2 * ceil32(('cd', 516).length)) + (2 * ceil32(('cd', 548).length)) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + ('cd', 580).length + 2692] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                         gas gas_remaining wei
                        args 96, mem[480], ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2212 len 128], mem[288], mem[320], mem[352], mem[384], mem[416], mem[448], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, Mask(8 * ceil32(('cd', 516).length), -(8 * ceil32(('cd', 516).length)) + 256, call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]) << (8 * ceil32(('cd', 516).length)) - 256, ('cd', 548).length, call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length], ('cd', 580).length, call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                else:
                    mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + ('cd', 548).length + 2660] = 0
                    mem[(2 * ceil32(('cd', 516).length)) + (2 * ceil32(('cd', 548).length)) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2660] = ('cd', 580).length
                    mem[(2 * ceil32(('cd', 516).length)) + (2 * ceil32(('cd', 548).length)) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2692 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                    if ceil32(('cd', 580).length) > ('cd', 580).length:
                        mem[(2 * ceil32(('cd', 516).length)) + (2 * ceil32(('cd', 548).length)) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + ('cd', 580).length + 2692] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                         gas gas_remaining wei
                        args 96, mem[480], ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2212 len 128], mem[288], mem[320], mem[352], mem[384], mem[416], mem[448], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, Mask(8 * ceil32(('cd', 516).length), -(8 * ceil32(('cd', 516).length)) + 256, call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]) << (8 * ceil32(('cd', 516).length)) - 256, ('cd', 548).length, Mask(8 * ceil32(('cd', 548).length), -(8 * ceil32(('cd', 548).length)) + 256, call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]) << (8 * ceil32(('cd', 548).length)) - 256, ('cd', 580).length, call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                require bool(ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 2240 <= test266151307())
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 2244] = this.address
                require ext_code.size(mem[592 len 20])
                call mem[592 len 20].0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 2240] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'ds-math-add-overflow'
                if ext_call.return_data[0] != 2 * ext_call.return_data[0]:
                    revert with 0, 'Maker asset balance different than expected'
                if ext_call.return_data[32] != mem[480]:
                    revert with 0, 'Filled amount does not match desired fill amount'
                require ext_code.size(this.address)
                call this.address.hub() with:
                     gas gas_remaining wei
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (16 * ceil32(return_data.size)) + 2240] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(ext_call.return_data[12 len 20])
                call ext_call.return_data[12 len 20].accounting() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 2244] = mem[592 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).addAssetToOwnedAssets(address arg1) with:
                     gas gas_remaining wei
                    args address(mem[580])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(this.address)
                call this.address.hub() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(ext_call.return_data[12 len 20])
                call ext_call.return_data[12 len 20].accounting() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(ext_call.return_data[12 len 20])
                call ext_call.return_data[12 len 20].0x71b58058 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(this.address)
                call this.address.returnAssetToVault(address arg1) with:
                     gas gas_remaining wei
                    args address(mem[580])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 2240] = mem[592 len 20]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 2272] = mem[ceil32(('cd', 516).length) + 624 len 20]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 2304] = mem[288]
                idx = 0
                s = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 2240
                t = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 2500
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(this.address)
                call this.address.0x195a261f with:
                     gas gas_remaining wei
                    args address(cd[4]), ext_call.return_data[32], 1, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 2500 len 64], mem[480] >> 512
            else:
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] = 0xdb123b1a00000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(cd[4]))
                call address(cd[4]).ZRX_ASSET_DATA() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2112
                require return_data.size >= 32
                _1601 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112]
                require mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] <= test266151307()
                require ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + return_data.size + 2112 > ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] + 2143
                _1605 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] + 2112]
                require mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] + 2112] <= test266151307()
                require ceil32(mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] + 2112]) + 32 >= 0 and ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + ceil32(mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] + 2112]) + 2144 <= test266151307()
                mem[64] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + ceil32(mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] + 2112]) + 2144
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2112] = _1605
                require _1601 + _1605 + 32 <= return_data.size
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2144 len ceil32(_1605)] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + _1601 + 2144 len ceil32(_1605)]
                if ceil32(_1605) <= _1605:
                    _2822 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2144]
                    mem[mem[64] + 4] = Mask(32, 224, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2144])
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).getAssetProxy(bytes4 arg1) with:
                         gas gas_remaining wei
                        args Mask(32, 224, _2822)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2869 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2877 = mem[_2869]
                    require ext_code.size(this.address)
                    call this.address.hub() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2917 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(mem[_2917 + 12 len 20])
                    call mem[_2917 + 12 len 20].vault() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3026 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3044 = mem[_3026]
                    _3106 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2148]
                    mem[mem[64]] = 0xf3fef3a300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_3106)
                    mem[mem[64] + 36] = _1571
                    require ext_code.size(address(_3044))
                    call address(_3044).withdraw(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_3106), _1571
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3230 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2148]
                    mem[mem[64] + 4] = address(_2877)
                    mem[mem[64] + 36] = _1571
                    require ext_code.size(address(_3230))
                    call address(_3230).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_2877), _1571
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3347 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_3347]:
                        revert with 0, 'Fee asset could not be approved'
                    _3480 = mem[580]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_3480))
                    call address(_3480).0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3804 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3837 = mem[_3804]
                    mem[mem[64]] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1516 len 20]
                    mem[mem[64] + 132] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1548 len 20]
                    mem[mem[64] + 164] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1580 len 20]
                    mem[mem[64] + 196] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1612 len 20]
                    mem[mem[64] + 228] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                    mem[mem[64] + 260] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                    mem[mem[64] + 292] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1696]
                    mem[mem[64] + 324] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1728]
                    mem[mem[64] + 356] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1760]
                    mem[mem[64] + 388] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1792]
                    mem[mem[64] + 420] = 384
                    mem[mem[64] + 484] = ('cd', 516).length
                    mem[mem[64] + 516 len ceil32(('cd', 516).length)] = call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]
                    if ceil32(('cd', 516).length) <= ('cd', 516).length:
                        mem[mem[64] + 452] = ceil32(('cd', 516).length) + 416
                        mem[mem[64] + ceil32(('cd', 516).length) + 516] = ('cd', 548).length
                        mem[mem[64] + ceil32(('cd', 516).length) + 548 len ceil32(('cd', 548).length)] = call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
                        if ceil32(('cd', 548).length) <= ('cd', 548).length:
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14793 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14881 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14881] = mem[_14793]
                                mem[_14881 + 32] = mem[_14793 + 32]
                                mem[_14881 + 64] = mem[_14793 + 64]
                                mem[_14881 + 96] = mem[_14793 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3480))
                                call address(_3480).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15329 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3837 + mem[_14881] < _3837:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15329] != _3837 + mem[_14881]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14881 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16097 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16097 + 12 len 20])
                                call mem[_16097 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16353 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16417 = mem[_16353]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16417))
                                call address(_16417).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16737 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16737 + 12 len 20])
                                call mem[_16737 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16993 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16993 + 12 len 20])
                                call mem[_16993 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17378 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17378] = address(_45)
                                mem[_17378 + 32] = address(_46)
                                _17379 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17379] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17379 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17379 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17378
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17379 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14849 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14913 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14913] = mem[_14849]
                                mem[_14913 + 32] = mem[_14849 + 32]
                                mem[_14913 + 64] = mem[_14849 + 64]
                                mem[_14913 + 96] = mem[_14849 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3480))
                                call address(_3480).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15361 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3837 + mem[_14913] < _3837:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15361] != _3837 + mem[_14913]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14913 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16129 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16129 + 12 len 20])
                                call mem[_16129 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16385 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16449 = mem[_16385]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16449))
                                call address(_16449).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16769 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16769 + 12 len 20])
                                call mem[_16769 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17025 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17025 + 12 len 20])
                                call mem[_17025 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17570 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17570] = address(_45)
                                mem[_17570 + 32] = address(_46)
                                _17571 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17571] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17571 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17571 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17570
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17571 len 96]
                        else:
                            mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 548] = 0
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14794 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14882 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14882] = mem[_14794]
                                mem[_14882 + 32] = mem[_14794 + 32]
                                mem[_14882 + 64] = mem[_14794 + 64]
                                mem[_14882 + 96] = mem[_14794 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3480))
                                call address(_3480).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15330 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3837 + mem[_14882] < _3837:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15330] != _3837 + mem[_14882]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14882 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16098 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16098 + 12 len 20])
                                call mem[_16098 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16354 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16418 = mem[_16354]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16418))
                                call address(_16418).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16738 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16738 + 12 len 20])
                                call mem[_16738 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16994 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16994 + 12 len 20])
                                call mem[_16994 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17384 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17384] = address(_45)
                                mem[_17384 + 32] = address(_46)
                                _17385 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17385] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17385 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17385 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17384
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17385 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14850 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14914 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14914] = mem[_14850]
                                mem[_14914 + 32] = mem[_14850 + 32]
                                mem[_14914 + 64] = mem[_14850 + 64]
                                mem[_14914 + 96] = mem[_14850 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3480))
                                call address(_3480).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15362 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3837 + mem[_14914] < _3837:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15362] != _3837 + mem[_14914]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14914 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16130 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16130 + 12 len 20])
                                call mem[_16130 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16386 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16450 = mem[_16386]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16450))
                                call address(_16450).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16770 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16770 + 12 len 20])
                                call mem[_16770 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17026 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17026 + 12 len 20])
                                call mem[_17026 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17576 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17576] = address(_45)
                                mem[_17576 + 32] = address(_46)
                                _17577 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17577] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17577 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17577 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17576
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17577 len 96]
                    else:
                        mem[mem[64] + ('cd', 516).length + 516] = 0
                        mem[mem[64] + 452] = ceil32(('cd', 516).length) + 416
                        mem[mem[64] + ceil32(('cd', 516).length) + 516] = ('cd', 548).length
                        mem[mem[64] + ceil32(('cd', 516).length) + 548 len ceil32(('cd', 548).length)] = call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
                        if ceil32(('cd', 548).length) <= ('cd', 548).length:
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14795 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14883 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14883] = mem[_14795]
                                mem[_14883 + 32] = mem[_14795 + 32]
                                mem[_14883 + 64] = mem[_14795 + 64]
                                mem[_14883 + 96] = mem[_14795 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3480))
                                call address(_3480).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15331 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3837 + mem[_14883] < _3837:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15331] != _3837 + mem[_14883]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14883 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16099 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16099 + 12 len 20])
                                call mem[_16099 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16355 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16419 = mem[_16355]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16419))
                                call address(_16419).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16739 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16739 + 12 len 20])
                                call mem[_16739 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16995 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16995 + 12 len 20])
                                call mem[_16995 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17390 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17390] = address(_45)
                                mem[_17390 + 32] = address(_46)
                                _17391 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17391] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17391 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17391 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17390
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17391 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14851 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14915 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14915] = mem[_14851]
                                mem[_14915 + 32] = mem[_14851 + 32]
                                mem[_14915 + 64] = mem[_14851 + 64]
                                mem[_14915 + 96] = mem[_14851 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3480))
                                call address(_3480).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15363 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3837 + mem[_14915] < _3837:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15363] != _3837 + mem[_14915]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14915 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16131 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16131 + 12 len 20])
                                call mem[_16131 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16387 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16451 = mem[_16387]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16451))
                                call address(_16451).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16771 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16771 + 12 len 20])
                                call mem[_16771 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17027 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17027 + 12 len 20])
                                call mem[_17027 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17582 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17582] = address(_45)
                                mem[_17582 + 32] = address(_46)
                                _17583 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17583] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17583 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17583 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17582
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17583 len 96]
                        else:
                            mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 548] = 0
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14796 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14884 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14884] = mem[_14796]
                                mem[_14884 + 32] = mem[_14796 + 32]
                                mem[_14884 + 64] = mem[_14796 + 64]
                                mem[_14884 + 96] = mem[_14796 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3480))
                                call address(_3480).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15332 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3837 + mem[_14884] < _3837:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15332] != _3837 + mem[_14884]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14884 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16100 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16100 + 12 len 20])
                                call mem[_16100 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16356 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16420 = mem[_16356]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16420))
                                call address(_16420).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16740 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16740 + 12 len 20])
                                call mem[_16740 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16996 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16996 + 12 len 20])
                                call mem[_16996 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17396 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17396] = address(_45)
                                mem[_17396 + 32] = address(_46)
                                _17397 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17397] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17397 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17397 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17396
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17397 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14852 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14916 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14916] = mem[_14852]
                                mem[_14916 + 32] = mem[_14852 + 32]
                                mem[_14916 + 64] = mem[_14852 + 64]
                                mem[_14916 + 96] = mem[_14852 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3480))
                                call address(_3480).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15364 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3837 + mem[_14916] < _3837:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15364] != _3837 + mem[_14916]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14916 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16132 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16132 + 12 len 20])
                                call mem[_16132 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16388 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16452 = mem[_16388]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16452))
                                call address(_16452).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16772 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16772 + 12 len 20])
                                call mem[_16772 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17028 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17028 + 12 len 20])
                                call mem[_17028 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17588 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17588] = address(_45)
                                mem[_17588 + 32] = address(_46)
                                _17589 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17589] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17589 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17589 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17588
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17589 len 96]
                else:
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + _1605 + 2144] = 0
                    _2834 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2144]
                    mem[mem[64] + 4] = Mask(32, 224, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2144])
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).getAssetProxy(bytes4 arg1) with:
                         gas gas_remaining wei
                        args Mask(32, 224, _2834)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2873 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2881 = mem[_2873]
                    require ext_code.size(this.address)
                    call this.address.hub() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2922 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(mem[_2922 + 12 len 20])
                    call mem[_2922 + 12 len 20].vault() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3033 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3060 = mem[_3033]
                    _3115 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2148]
                    mem[mem[64]] = 0xf3fef3a300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_3115)
                    mem[mem[64] + 36] = _1571
                    require ext_code.size(address(_3060))
                    call address(_3060).withdraw(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_3115), _1571
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3241 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2148]
                    mem[mem[64] + 4] = address(_2881)
                    mem[mem[64] + 36] = _1571
                    require ext_code.size(address(_3241))
                    call address(_3241).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_2881), _1571
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3360 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_3360]:
                        revert with 0, 'Fee asset could not be approved'
                    _3522 = mem[580]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_3522))
                    call address(_3522).0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3820 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3841 = mem[_3820]
                    mem[mem[64]] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1516 len 20]
                    mem[mem[64] + 132] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1548 len 20]
                    mem[mem[64] + 164] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1580 len 20]
                    mem[mem[64] + 196] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1612 len 20]
                    mem[mem[64] + 228] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                    mem[mem[64] + 260] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                    mem[mem[64] + 292] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1696]
                    mem[mem[64] + 324] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1728]
                    mem[mem[64] + 356] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1760]
                    mem[mem[64] + 388] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1792]
                    mem[mem[64] + 420] = 384
                    mem[mem[64] + 484] = ('cd', 516).length
                    mem[mem[64] + 516 len ceil32(('cd', 516).length)] = call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]
                    if ceil32(('cd', 516).length) <= ('cd', 516).length:
                        mem[mem[64] + 452] = ceil32(('cd', 516).length) + 416
                        mem[mem[64] + ceil32(('cd', 516).length) + 516] = ('cd', 548).length
                        mem[mem[64] + ceil32(('cd', 516).length) + 548 len ceil32(('cd', 548).length)] = call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
                        if ceil32(('cd', 548).length) <= ('cd', 548).length:
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14797 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14885 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14885] = mem[_14797]
                                mem[_14885 + 32] = mem[_14797 + 32]
                                mem[_14885 + 64] = mem[_14797 + 64]
                                mem[_14885 + 96] = mem[_14797 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3522))
                                call address(_3522).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15333 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3841 + mem[_14885] < _3841:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15333] != _3841 + mem[_14885]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14885 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16101 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16101 + 12 len 20])
                                call mem[_16101 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16357 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16421 = mem[_16357]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16421))
                                call address(_16421).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16741 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16741 + 12 len 20])
                                call mem[_16741 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16997 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16997 + 12 len 20])
                                call mem[_16997 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17402 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17402] = address(_45)
                                mem[_17402 + 32] = address(_46)
                                _17403 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17403] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17403 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17403 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17402
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17403 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14853 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14917 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14917] = mem[_14853]
                                mem[_14917 + 32] = mem[_14853 + 32]
                                mem[_14917 + 64] = mem[_14853 + 64]
                                mem[_14917 + 96] = mem[_14853 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3522))
                                call address(_3522).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15365 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3841 + mem[_14917] < _3841:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15365] != _3841 + mem[_14917]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14917 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16133 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16133 + 12 len 20])
                                call mem[_16133 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16389 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16453 = mem[_16389]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16453))
                                call address(_16453).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16773 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16773 + 12 len 20])
                                call mem[_16773 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17029 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17029 + 12 len 20])
                                call mem[_17029 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17594 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17594] = address(_45)
                                mem[_17594 + 32] = address(_46)
                                _17595 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17595] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17595 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17595 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17594
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17595 len 96]
                        else:
                            mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 548] = 0
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14798 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14886 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14886] = mem[_14798]
                                mem[_14886 + 32] = mem[_14798 + 32]
                                mem[_14886 + 64] = mem[_14798 + 64]
                                mem[_14886 + 96] = mem[_14798 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3522))
                                call address(_3522).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15334 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3841 + mem[_14886] < _3841:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15334] != _3841 + mem[_14886]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14886 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16102 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16102 + 12 len 20])
                                call mem[_16102 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16358 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16422 = mem[_16358]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16422))
                                call address(_16422).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16742 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16742 + 12 len 20])
                                call mem[_16742 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16998 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16998 + 12 len 20])
                                call mem[_16998 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17408 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17408] = address(_45)
                                mem[_17408 + 32] = address(_46)
                                _17409 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17409] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17409 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17409 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17408
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17409 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14854 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14918 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14918] = mem[_14854]
                                mem[_14918 + 32] = mem[_14854 + 32]
                                mem[_14918 + 64] = mem[_14854 + 64]
                                mem[_14918 + 96] = mem[_14854 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3522))
                                call address(_3522).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15366 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3841 + mem[_14918] < _3841:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15366] != _3841 + mem[_14918]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14918 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16134 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16134 + 12 len 20])
                                call mem[_16134 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16390 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16454 = mem[_16390]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16454))
                                call address(_16454).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16774 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16774 + 12 len 20])
                                call mem[_16774 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17030 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17030 + 12 len 20])
                                call mem[_17030 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17600 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17600] = address(_45)
                                mem[_17600 + 32] = address(_46)
                                _17601 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17601] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17601 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17601 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17600
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17601 len 96]
                    else:
                        mem[mem[64] + ('cd', 516).length + 516] = 0
                        mem[mem[64] + 452] = ceil32(('cd', 516).length) + 416
                        mem[mem[64] + ceil32(('cd', 516).length) + 516] = ('cd', 548).length
                        mem[mem[64] + ceil32(('cd', 516).length) + 548 len ceil32(('cd', 548).length)] = call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
                        if ceil32(('cd', 548).length) <= ('cd', 548).length:
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14799 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14887 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14887] = mem[_14799]
                                mem[_14887 + 32] = mem[_14799 + 32]
                                mem[_14887 + 64] = mem[_14799 + 64]
                                mem[_14887 + 96] = mem[_14799 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3522))
                                call address(_3522).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15335 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3841 + mem[_14887] < _3841:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15335] != _3841 + mem[_14887]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14887 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16103 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16103 + 12 len 20])
                                call mem[_16103 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16359 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16423 = mem[_16359]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16423))
                                call address(_16423).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16743 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16743 + 12 len 20])
                                call mem[_16743 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16999 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16999 + 12 len 20])
                                call mem[_16999 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17414 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17414] = address(_45)
                                mem[_17414 + 32] = address(_46)
                                _17415 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17415] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17415 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17415 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17414
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17415 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14855 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14919 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14919] = mem[_14855]
                                mem[_14919 + 32] = mem[_14855 + 32]
                                mem[_14919 + 64] = mem[_14855 + 64]
                                mem[_14919 + 96] = mem[_14855 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3522))
                                call address(_3522).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15367 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3841 + mem[_14919] < _3841:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15367] != _3841 + mem[_14919]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14919 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16135 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16135 + 12 len 20])
                                call mem[_16135 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16391 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16455 = mem[_16391]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16455))
                                call address(_16455).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16775 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16775 + 12 len 20])
                                call mem[_16775 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17031 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17031 + 12 len 20])
                                call mem[_17031 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17606 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17606] = address(_45)
                                mem[_17606 + 32] = address(_46)
                                _17607 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17607] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17607 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17607 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17606
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17607 len 96]
                        else:
                            mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 548] = 0
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14800 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14888 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14888] = mem[_14800]
                                mem[_14888 + 32] = mem[_14800 + 32]
                                mem[_14888 + 64] = mem[_14800 + 64]
                                mem[_14888 + 96] = mem[_14800 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3522))
                                call address(_3522).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15336 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3841 + mem[_14888] < _3841:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15336] != _3841 + mem[_14888]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14888 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16104 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16104 + 12 len 20])
                                call mem[_16104 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16360 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16424 = mem[_16360]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16424))
                                call address(_16424).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16744 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16744 + 12 len 20])
                                call mem[_16744 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17000 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17000 + 12 len 20])
                                call mem[_17000 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17420 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17420] = address(_45)
                                mem[_17420 + 32] = address(_46)
                                _17421 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17421] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17421 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17421 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17420
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17421 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14856 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14920 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14920] = mem[_14856]
                                mem[_14920 + 32] = mem[_14856 + 32]
                                mem[_14920 + 64] = mem[_14856 + 64]
                                mem[_14920 + 96] = mem[_14856 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3522))
                                call address(_3522).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15368 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3841 + mem[_14920] < _3841:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15368] != _3841 + mem[_14920]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14920 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16136 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16136 + 12 len 20])
                                call mem[_16136 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16392 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16456 = mem[_16392]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16456))
                                call address(_16456).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16776 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16776 + 12 len 20])
                                call mem[_16776 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17032 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17032 + 12 len 20])
                                call mem[_17032 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17612 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17612] = address(_45)
                                mem[_17612 + 32] = address(_46)
                                _17613 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17613] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17613 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17613 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17612
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17613 len 96]
                require ext_code.size(this.address)
                call this.address.0x195a261f with:
                     gas gas_remaining wei
                    args address(cd[4]), ext_call.return_data[32], 1, mem[mem[64] + 100 len 160]
        else:
            mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + ('cd', 548).length + 2372] = 0
            require ext_code.size(address(cd[4]))
            call address(cd[4]).getOrderInfo(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12) with:
                 gas gas_remaining wei
                args 32, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 1924 len 128], mem[288], mem[320], mem[352], mem[384], mem[416], mem[448], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, Mask(8 * ceil32(('cd', 516).length), -(8 * ceil32(('cd', 516).length)) + 256, call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]) << (8 * ceil32(('cd', 516).length)) - 256, ('cd', 548).length, call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 1888 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require bool(ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 1984 <= test266151307())
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 1888] = ext_call.return_data[31 len 1]
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 1920] = ext_call.return_data[32]
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 1952] = ext_call.return_data[64]
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 1984] = 0
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2016] = 0
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2048] = 0
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2080] = 0
            _1578 = mem[384]
            if mem[384] <= 0:
                require ext_code.size(mem[592 len 20])
                call mem[592 len 20].0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2212] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1516 len 20]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2244] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1548 len 20]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2276] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1580 len 20]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2308] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1612 len 20]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2340] = mem[288]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2372] = mem[320]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2404] = mem[352]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2436] = mem[384]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2468] = mem[416]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2500] = mem[448]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2532] = 384
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2596] = ('cd', 516).length
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2628 len ceil32(('cd', 516).length)] = call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]
                if ceil32(('cd', 516).length) > ('cd', 516).length:
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + ('cd', 516).length + 2628] = 0
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2564] = ceil32(('cd', 516).length) + 416
                mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2628] = ('cd', 548).length
                mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2660 len ceil32(('cd', 548).length)] = call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
                if ceil32(('cd', 548).length) > ('cd', 548).length:
                    mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + ('cd', 548).length + 2660] = 0
                mem[(2 * ceil32(('cd', 516).length)) + (2 * ceil32(('cd', 548).length)) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2660] = ('cd', 580).length
                mem[(2 * ceil32(('cd', 516).length)) + (2 * ceil32(('cd', 548).length)) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2692 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                if ceil32(('cd', 580).length) > ('cd', 580).length:
                    mem[(2 * ceil32(('cd', 516).length)) + (2 * ceil32(('cd', 548).length)) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + ('cd', 580).length + 2692] = 0
                require ext_code.size(address(cd[4]))
                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                     gas gas_remaining wei
                    args 96, mem[480], ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2212 len 128], mem[288], mem[320], mem[352], mem[384], mem[416], mem[448], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, Mask(8 * ceil32(('cd', 516).length), -(8 * ceil32(('cd', 516).length)) + 256, call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]) << (8 * ceil32(('cd', 516).length)) - 256, ('cd', 548).length, Mask(8 * ceil32(('cd', 548).length), -(8 * ceil32(('cd', 548).length)) + 256, call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]) << (8 * ceil32(('cd', 548).length)) - 256, ('cd', 580).length, call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                require bool(ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 2240 <= test266151307())
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 2244] = this.address
                require ext_code.size(mem[592 len 20])
                call mem[592 len 20].0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 2240] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'ds-math-add-overflow'
                if ext_call.return_data[0] != 2 * ext_call.return_data[0]:
                    revert with 0, 'Maker asset balance different than expected'
                if ext_call.return_data[32] != mem[480]:
                    revert with 0, 'Filled amount does not match desired fill amount'
                require ext_code.size(this.address)
                call this.address.hub() with:
                     gas gas_remaining wei
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (16 * ceil32(return_data.size)) + 2240] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(ext_call.return_data[12 len 20])
                call ext_call.return_data[12 len 20].accounting() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 2244] = mem[592 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).addAssetToOwnedAssets(address arg1) with:
                     gas gas_remaining wei
                    args address(mem[580])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(this.address)
                call this.address.hub() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(ext_call.return_data[12 len 20])
                call ext_call.return_data[12 len 20].accounting() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(ext_call.return_data[12 len 20])
                call ext_call.return_data[12 len 20].0x71b58058 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(this.address)
                call this.address.returnAssetToVault(address arg1) with:
                     gas gas_remaining wei
                    args address(mem[580])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 2240] = mem[592 len 20]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 2272] = mem[ceil32(('cd', 516).length) + 624 len 20]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 2304] = mem[288]
                idx = 0
                s = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 2240
                t = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 2500
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(this.address)
                call this.address.0x195a261f with:
                     gas gas_remaining wei
                    args address(cd[4]), ext_call.return_data[32], 1, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 2500 len 64], mem[480] >> 512
            else:
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] = 0xdb123b1a00000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(cd[4]))
                call address(cd[4]).ZRX_ASSET_DATA() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2112
                require return_data.size >= 32
                _1603 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112]
                require mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] <= test266151307()
                require ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + return_data.size + 2112 > ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] + 2143
                _1607 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] + 2112]
                require mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] + 2112] <= test266151307()
                require ceil32(mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] + 2112]) + 32 >= 0 and ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + ceil32(mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] + 2112]) + 2144 <= test266151307()
                mem[64] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + ceil32(mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] + 2112]) + 2144
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2112] = _1607
                require _1603 + _1607 + 32 <= return_data.size
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2144 len ceil32(_1607)] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + _1603 + 2144 len ceil32(_1607)]
                if ceil32(_1607) <= _1607:
                    _2825 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2144]
                    mem[mem[64] + 4] = Mask(32, 224, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2144])
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).getAssetProxy(bytes4 arg1) with:
                         gas gas_remaining wei
                        args Mask(32, 224, _2825)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2870 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2878 = mem[_2870]
                    require ext_code.size(this.address)
                    call this.address.hub() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2918 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(mem[_2918 + 12 len 20])
                    call mem[_2918 + 12 len 20].vault() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3028 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3048 = mem[_3028]
                    _3108 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2148]
                    mem[mem[64]] = 0xf3fef3a300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_3108)
                    mem[mem[64] + 36] = _1578
                    require ext_code.size(address(_3048))
                    call address(_3048).withdraw(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_3108), _1578
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3232 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2148]
                    mem[mem[64] + 4] = address(_2878)
                    mem[mem[64] + 36] = _1578
                    require ext_code.size(address(_3232))
                    call address(_3232).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_2878), _1578
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3350 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_3350]:
                        revert with 0, 'Fee asset could not be approved'
                    _3490 = mem[580]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_3490))
                    call address(_3490).0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3808 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3838 = mem[_3808]
                    mem[mem[64]] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1516 len 20]
                    mem[mem[64] + 132] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1548 len 20]
                    mem[mem[64] + 164] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1580 len 20]
                    mem[mem[64] + 196] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1612 len 20]
                    mem[mem[64] + 228] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                    mem[mem[64] + 260] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                    mem[mem[64] + 292] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1696]
                    mem[mem[64] + 324] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1728]
                    mem[mem[64] + 356] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1760]
                    mem[mem[64] + 388] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1792]
                    mem[mem[64] + 420] = 384
                    mem[mem[64] + 484] = ('cd', 516).length
                    mem[mem[64] + 516 len ceil32(('cd', 516).length)] = call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]
                    if ceil32(('cd', 516).length) <= ('cd', 516).length:
                        mem[mem[64] + 452] = ceil32(('cd', 516).length) + 416
                        mem[mem[64] + ceil32(('cd', 516).length) + 516] = ('cd', 548).length
                        mem[mem[64] + ceil32(('cd', 516).length) + 548 len ceil32(('cd', 548).length)] = call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
                        if ceil32(('cd', 548).length) <= ('cd', 548).length:
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14809 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14889 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14889] = mem[_14809]
                                mem[_14889 + 32] = mem[_14809 + 32]
                                mem[_14889 + 64] = mem[_14809 + 64]
                                mem[_14889 + 96] = mem[_14809 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3490))
                                call address(_3490).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15337 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3838 + mem[_14889] < _3838:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15337] != _3838 + mem[_14889]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14889 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16105 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16105 + 12 len 20])
                                call mem[_16105 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16361 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16425 = mem[_16361]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16425))
                                call address(_16425).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16745 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16745 + 12 len 20])
                                call mem[_16745 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17001 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17001 + 12 len 20])
                                call mem[_17001 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17426 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17426] = address(_45)
                                mem[_17426 + 32] = address(_46)
                                _17427 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17427] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17427 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17427 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17426
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17427 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14857 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14921 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14921] = mem[_14857]
                                mem[_14921 + 32] = mem[_14857 + 32]
                                mem[_14921 + 64] = mem[_14857 + 64]
                                mem[_14921 + 96] = mem[_14857 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3490))
                                call address(_3490).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15369 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3838 + mem[_14921] < _3838:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15369] != _3838 + mem[_14921]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14921 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16137 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16137 + 12 len 20])
                                call mem[_16137 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16393 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16457 = mem[_16393]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16457))
                                call address(_16457).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16777 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16777 + 12 len 20])
                                call mem[_16777 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17033 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17033 + 12 len 20])
                                call mem[_17033 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17618 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17618] = address(_45)
                                mem[_17618 + 32] = address(_46)
                                _17619 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17619] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17619 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17619 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17618
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17619 len 96]
                        else:
                            mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 548] = 0
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14810 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14890 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14890] = mem[_14810]
                                mem[_14890 + 32] = mem[_14810 + 32]
                                mem[_14890 + 64] = mem[_14810 + 64]
                                mem[_14890 + 96] = mem[_14810 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3490))
                                call address(_3490).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15338 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3838 + mem[_14890] < _3838:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15338] != _3838 + mem[_14890]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14890 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16106 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16106 + 12 len 20])
                                call mem[_16106 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16362 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16426 = mem[_16362]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16426))
                                call address(_16426).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16746 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16746 + 12 len 20])
                                call mem[_16746 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17002 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17002 + 12 len 20])
                                call mem[_17002 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17432 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17432] = address(_45)
                                mem[_17432 + 32] = address(_46)
                                _17433 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17433] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17433 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17433 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17432
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17433 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14858 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14922 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14922] = mem[_14858]
                                mem[_14922 + 32] = mem[_14858 + 32]
                                mem[_14922 + 64] = mem[_14858 + 64]
                                mem[_14922 + 96] = mem[_14858 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3490))
                                call address(_3490).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15370 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3838 + mem[_14922] < _3838:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15370] != _3838 + mem[_14922]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14922 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16138 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16138 + 12 len 20])
                                call mem[_16138 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16394 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16458 = mem[_16394]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16458))
                                call address(_16458).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16778 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16778 + 12 len 20])
                                call mem[_16778 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17034 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17034 + 12 len 20])
                                call mem[_17034 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17624 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17624] = address(_45)
                                mem[_17624 + 32] = address(_46)
                                _17625 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17625] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17625 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17625 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17624
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17625 len 96]
                    else:
                        mem[mem[64] + ('cd', 516).length + 516] = 0
                        mem[mem[64] + 452] = ceil32(('cd', 516).length) + 416
                        mem[mem[64] + ceil32(('cd', 516).length) + 516] = ('cd', 548).length
                        mem[mem[64] + ceil32(('cd', 516).length) + 548 len ceil32(('cd', 548).length)] = call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
                        if ceil32(('cd', 548).length) <= ('cd', 548).length:
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14811 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14891 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14891] = mem[_14811]
                                mem[_14891 + 32] = mem[_14811 + 32]
                                mem[_14891 + 64] = mem[_14811 + 64]
                                mem[_14891 + 96] = mem[_14811 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3490))
                                call address(_3490).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15339 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3838 + mem[_14891] < _3838:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15339] != _3838 + mem[_14891]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14891 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16107 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16107 + 12 len 20])
                                call mem[_16107 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16363 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16427 = mem[_16363]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16427))
                                call address(_16427).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16747 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16747 + 12 len 20])
                                call mem[_16747 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17003 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17003 + 12 len 20])
                                call mem[_17003 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17438 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17438] = address(_45)
                                mem[_17438 + 32] = address(_46)
                                _17439 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17439] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17439 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17439 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17438
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17439 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14859 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14923 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14923] = mem[_14859]
                                mem[_14923 + 32] = mem[_14859 + 32]
                                mem[_14923 + 64] = mem[_14859 + 64]
                                mem[_14923 + 96] = mem[_14859 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3490))
                                call address(_3490).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15371 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3838 + mem[_14923] < _3838:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15371] != _3838 + mem[_14923]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14923 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16139 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16139 + 12 len 20])
                                call mem[_16139 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16395 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16459 = mem[_16395]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16459))
                                call address(_16459).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16779 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16779 + 12 len 20])
                                call mem[_16779 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17035 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17035 + 12 len 20])
                                call mem[_17035 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17630 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17630] = address(_45)
                                mem[_17630 + 32] = address(_46)
                                _17631 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17631] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17631 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17631 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17630
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17631 len 96]
                        else:
                            mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 548] = 0
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14812 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14892 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14892] = mem[_14812]
                                mem[_14892 + 32] = mem[_14812 + 32]
                                mem[_14892 + 64] = mem[_14812 + 64]
                                mem[_14892 + 96] = mem[_14812 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3490))
                                call address(_3490).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15340 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3838 + mem[_14892] < _3838:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15340] != _3838 + mem[_14892]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14892 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16108 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16108 + 12 len 20])
                                call mem[_16108 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16364 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16428 = mem[_16364]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16428))
                                call address(_16428).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16748 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16748 + 12 len 20])
                                call mem[_16748 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17004 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17004 + 12 len 20])
                                call mem[_17004 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17444 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17444] = address(_45)
                                mem[_17444 + 32] = address(_46)
                                _17445 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17445] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17445 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17445 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17444
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17445 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14860 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14924 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14924] = mem[_14860]
                                mem[_14924 + 32] = mem[_14860 + 32]
                                mem[_14924 + 64] = mem[_14860 + 64]
                                mem[_14924 + 96] = mem[_14860 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3490))
                                call address(_3490).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15372 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3838 + mem[_14924] < _3838:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15372] != _3838 + mem[_14924]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14924 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16140 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16140 + 12 len 20])
                                call mem[_16140 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16396 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16460 = mem[_16396]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16460))
                                call address(_16460).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16780 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16780 + 12 len 20])
                                call mem[_16780 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17036 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17036 + 12 len 20])
                                call mem[_17036 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17636 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17636] = address(_45)
                                mem[_17636 + 32] = address(_46)
                                _17637 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17637] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17637 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17637 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17636
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17637 len 96]
                else:
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + _1607 + 2144] = 0
                    _2837 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2144]
                    mem[mem[64] + 4] = Mask(32, 224, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2144])
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).getAssetProxy(bytes4 arg1) with:
                         gas gas_remaining wei
                        args Mask(32, 224, _2837)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2874 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2882 = mem[_2874]
                    require ext_code.size(this.address)
                    call this.address.hub() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2924 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(mem[_2924 + 12 len 20])
                    call mem[_2924 + 12 len 20].vault() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3034 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3064 = mem[_3034]
                    _3118 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2148]
                    mem[mem[64]] = 0xf3fef3a300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_3118)
                    mem[mem[64] + 36] = _1578
                    require ext_code.size(address(_3064))
                    call address(_3064).withdraw(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_3118), _1578
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3246 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2148]
                    mem[mem[64] + 4] = address(_2882)
                    mem[mem[64] + 36] = _1578
                    require ext_code.size(address(_3246))
                    call address(_3246).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_2882), _1578
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3364 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_3364]:
                        revert with 0, 'Fee asset could not be approved'
                    _3532 = mem[580]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_3532))
                    call address(_3532).0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3824 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3842 = mem[_3824]
                    mem[mem[64]] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1516 len 20]
                    mem[mem[64] + 132] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1548 len 20]
                    mem[mem[64] + 164] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1580 len 20]
                    mem[mem[64] + 196] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1612 len 20]
                    mem[mem[64] + 228] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                    mem[mem[64] + 260] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                    mem[mem[64] + 292] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1696]
                    mem[mem[64] + 324] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1728]
                    mem[mem[64] + 356] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1760]
                    mem[mem[64] + 388] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1792]
                    mem[mem[64] + 420] = 384
                    mem[mem[64] + 484] = ('cd', 516).length
                    mem[mem[64] + 516 len ceil32(('cd', 516).length)] = call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]
                    if ceil32(('cd', 516).length) <= ('cd', 516).length:
                        mem[mem[64] + 452] = ceil32(('cd', 516).length) + 416
                        mem[mem[64] + ceil32(('cd', 516).length) + 516] = ('cd', 548).length
                        mem[mem[64] + ceil32(('cd', 516).length) + 548 len ceil32(('cd', 548).length)] = call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
                        if ceil32(('cd', 548).length) <= ('cd', 548).length:
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14813 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14893 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14893] = mem[_14813]
                                mem[_14893 + 32] = mem[_14813 + 32]
                                mem[_14893 + 64] = mem[_14813 + 64]
                                mem[_14893 + 96] = mem[_14813 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3532))
                                call address(_3532).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15341 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3842 + mem[_14893] < _3842:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15341] != _3842 + mem[_14893]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14893 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16109 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16109 + 12 len 20])
                                call mem[_16109 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16365 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16429 = mem[_16365]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16429))
                                call address(_16429).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16749 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16749 + 12 len 20])
                                call mem[_16749 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17005 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17005 + 12 len 20])
                                call mem[_17005 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17450 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17450] = address(_45)
                                mem[_17450 + 32] = address(_46)
                                _17451 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17451] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17451 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17451 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17450
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17451 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14861 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14925 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14925] = mem[_14861]
                                mem[_14925 + 32] = mem[_14861 + 32]
                                mem[_14925 + 64] = mem[_14861 + 64]
                                mem[_14925 + 96] = mem[_14861 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3532))
                                call address(_3532).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15373 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3842 + mem[_14925] < _3842:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15373] != _3842 + mem[_14925]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14925 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16141 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16141 + 12 len 20])
                                call mem[_16141 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16397 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16461 = mem[_16397]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16461))
                                call address(_16461).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16781 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16781 + 12 len 20])
                                call mem[_16781 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17037 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17037 + 12 len 20])
                                call mem[_17037 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17642 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17642] = address(_45)
                                mem[_17642 + 32] = address(_46)
                                _17643 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17643] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17643 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17643 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17642
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17643 len 96]
                        else:
                            mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 548] = 0
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14814 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14894 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14894] = mem[_14814]
                                mem[_14894 + 32] = mem[_14814 + 32]
                                mem[_14894 + 64] = mem[_14814 + 64]
                                mem[_14894 + 96] = mem[_14814 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3532))
                                call address(_3532).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15342 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3842 + mem[_14894] < _3842:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15342] != _3842 + mem[_14894]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14894 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16110 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16110 + 12 len 20])
                                call mem[_16110 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16366 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16430 = mem[_16366]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16430))
                                call address(_16430).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16750 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16750 + 12 len 20])
                                call mem[_16750 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17006 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17006 + 12 len 20])
                                call mem[_17006 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17456 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17456] = address(_45)
                                mem[_17456 + 32] = address(_46)
                                _17457 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17457] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17457 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17457 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17456
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17457 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14862 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14926 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14926] = mem[_14862]
                                mem[_14926 + 32] = mem[_14862 + 32]
                                mem[_14926 + 64] = mem[_14862 + 64]
                                mem[_14926 + 96] = mem[_14862 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3532))
                                call address(_3532).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15374 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3842 + mem[_14926] < _3842:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15374] != _3842 + mem[_14926]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14926 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16142 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16142 + 12 len 20])
                                call mem[_16142 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16398 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16462 = mem[_16398]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16462))
                                call address(_16462).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16782 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16782 + 12 len 20])
                                call mem[_16782 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17038 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17038 + 12 len 20])
                                call mem[_17038 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17648 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17648] = address(_45)
                                mem[_17648 + 32] = address(_46)
                                _17649 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17649] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17649 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17649 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17648
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17649 len 96]
                    else:
                        mem[mem[64] + ('cd', 516).length + 516] = 0
                        mem[mem[64] + 452] = ceil32(('cd', 516).length) + 416
                        mem[mem[64] + ceil32(('cd', 516).length) + 516] = ('cd', 548).length
                        mem[mem[64] + ceil32(('cd', 516).length) + 548 len ceil32(('cd', 548).length)] = call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
                        if ceil32(('cd', 548).length) <= ('cd', 548).length:
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14815 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14895 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14895] = mem[_14815]
                                mem[_14895 + 32] = mem[_14815 + 32]
                                mem[_14895 + 64] = mem[_14815 + 64]
                                mem[_14895 + 96] = mem[_14815 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3532))
                                call address(_3532).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15343 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3842 + mem[_14895] < _3842:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15343] != _3842 + mem[_14895]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14895 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16111 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16111 + 12 len 20])
                                call mem[_16111 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16367 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16431 = mem[_16367]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16431))
                                call address(_16431).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16751 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16751 + 12 len 20])
                                call mem[_16751 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17007 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17007 + 12 len 20])
                                call mem[_17007 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17462 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17462] = address(_45)
                                mem[_17462 + 32] = address(_46)
                                _17463 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17463] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17463 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17463 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17462
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17463 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14863 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14927 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14927] = mem[_14863]
                                mem[_14927 + 32] = mem[_14863 + 32]
                                mem[_14927 + 64] = mem[_14863 + 64]
                                mem[_14927 + 96] = mem[_14863 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3532))
                                call address(_3532).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15375 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3842 + mem[_14927] < _3842:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15375] != _3842 + mem[_14927]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14927 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16143 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16143 + 12 len 20])
                                call mem[_16143 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16399 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16463 = mem[_16399]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16463))
                                call address(_16463).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16783 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16783 + 12 len 20])
                                call mem[_16783 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17039 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17039 + 12 len 20])
                                call mem[_17039 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17654 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17654] = address(_45)
                                mem[_17654 + 32] = address(_46)
                                _17655 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17655] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17655 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17655 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17654
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17655 len 96]
                        else:
                            mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 548] = 0
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14816 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14896 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14896] = mem[_14816]
                                mem[_14896 + 32] = mem[_14816 + 32]
                                mem[_14896 + 64] = mem[_14816 + 64]
                                mem[_14896 + 96] = mem[_14816 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3532))
                                call address(_3532).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15344 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3842 + mem[_14896] < _3842:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15344] != _3842 + mem[_14896]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14896 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16112 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16112 + 12 len 20])
                                call mem[_16112 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16368 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16432 = mem[_16368]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16432))
                                call address(_16432).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16752 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16752 + 12 len 20])
                                call mem[_16752 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17008 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17008 + 12 len 20])
                                call mem[_17008 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17468 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17468] = address(_45)
                                mem[_17468 + 32] = address(_46)
                                _17469 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17469] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17469 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17469 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17468
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17469 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14864 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14928 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14928] = mem[_14864]
                                mem[_14928 + 32] = mem[_14864 + 32]
                                mem[_14928 + 64] = mem[_14864 + 64]
                                mem[_14928 + 96] = mem[_14864 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3532))
                                call address(_3532).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15376 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3842 + mem[_14928] < _3842:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15376] != _3842 + mem[_14928]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14928 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16144 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16144 + 12 len 20])
                                call mem[_16144 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16400 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16464 = mem[_16400]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16464))
                                call address(_16464).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16784 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16784 + 12 len 20])
                                call mem[_16784 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17040 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17040 + 12 len 20])
                                call mem[_17040 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17660 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17660] = address(_45)
                                mem[_17660 + 32] = address(_46)
                                _17661 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17661] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17661 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17661 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17660
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17661 len 96]
                require ext_code.size(this.address)
                call this.address.0x195a261f with:
                     gas gas_remaining wei
                    args address(cd[4]), ext_call.return_data[32], 1, mem[mem[64] + 100 len 160]
    else:
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + ('cd', 516).length + 2340] = 0
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 2276] = ceil32(('cd', 516).length) + 416
        mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 2340] = ('cd', 548).length
        mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 2372 len ceil32(('cd', 548).length)] = call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
        if ceil32(('cd', 548).length) <= ('cd', 548).length:
            require ext_code.size(address(cd[4]))
            call address(cd[4]).getOrderInfo(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12) with:
                 gas gas_remaining wei
                args 32, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 1924 len 128], mem[288], mem[320], mem[352], mem[384], mem[416], mem[448], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, Mask(8 * ceil32(('cd', 516).length), -(8 * ceil32(('cd', 516).length)) + 256, call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]) << (8 * ceil32(('cd', 516).length)) - 256, ('cd', 548).length, call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 1888 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require bool(ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 1984 <= test266151307())
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 1888] = ext_call.return_data[31 len 1]
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 1920] = ext_call.return_data[32]
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 1952] = ext_call.return_data[64]
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 1984] = 0
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2016] = 0
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2048] = 0
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2080] = 0
            _1573 = mem[384]
            if mem[384] <= 0:
                require ext_code.size(mem[592 len 20])
                call mem[592 len 20].0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2212] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1516 len 20]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2244] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1548 len 20]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2276] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1580 len 20]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2308] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1612 len 20]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2340] = mem[288]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2372] = mem[320]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2404] = mem[352]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2436] = mem[384]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2468] = mem[416]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2500] = mem[448]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2532] = 384
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2596] = ('cd', 516).length
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2628 len ceil32(('cd', 516).length)] = call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]
                if ceil32(('cd', 516).length) > ('cd', 516).length:
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + ('cd', 516).length + 2628] = 0
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2564] = ceil32(('cd', 516).length) + 416
                mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2628] = ('cd', 548).length
                mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2660 len ceil32(('cd', 548).length)] = call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
                if ceil32(('cd', 548).length) > ('cd', 548).length:
                    mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + ('cd', 548).length + 2660] = 0
                mem[(2 * ceil32(('cd', 516).length)) + (2 * ceil32(('cd', 548).length)) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2660] = ('cd', 580).length
                mem[(2 * ceil32(('cd', 516).length)) + (2 * ceil32(('cd', 548).length)) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2692 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                if ceil32(('cd', 580).length) > ('cd', 580).length:
                    mem[(2 * ceil32(('cd', 516).length)) + (2 * ceil32(('cd', 548).length)) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + ('cd', 580).length + 2692] = 0
                require ext_code.size(address(cd[4]))
                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                     gas gas_remaining wei
                    args 96, mem[480], ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2212 len 128], mem[288], mem[320], mem[352], mem[384], mem[416], mem[448], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, Mask(8 * ceil32(('cd', 516).length), -(8 * ceil32(('cd', 516).length)) + 256, call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]) << (8 * ceil32(('cd', 516).length)) - 256, ('cd', 548).length, Mask(8 * ceil32(('cd', 548).length), -(8 * ceil32(('cd', 548).length)) + 256, call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]) << (8 * ceil32(('cd', 548).length)) - 256, ('cd', 580).length, call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                require bool(ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 2240 <= test266151307())
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 2244] = this.address
                require ext_code.size(mem[592 len 20])
                call mem[592 len 20].0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 2240] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'ds-math-add-overflow'
                if ext_call.return_data[0] != 2 * ext_call.return_data[0]:
                    revert with 0, 'Maker asset balance different than expected'
                if ext_call.return_data[32] != mem[480]:
                    revert with 0, 'Filled amount does not match desired fill amount'
                require ext_code.size(this.address)
                call this.address.hub() with:
                     gas gas_remaining wei
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (16 * ceil32(return_data.size)) + 2240] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(ext_call.return_data[12 len 20])
                call ext_call.return_data[12 len 20].accounting() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 2244] = mem[592 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).addAssetToOwnedAssets(address arg1) with:
                     gas gas_remaining wei
                    args address(mem[580])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(this.address)
                call this.address.hub() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(ext_call.return_data[12 len 20])
                call ext_call.return_data[12 len 20].accounting() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(ext_call.return_data[12 len 20])
                call ext_call.return_data[12 len 20].0x71b58058 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(this.address)
                call this.address.returnAssetToVault(address arg1) with:
                     gas gas_remaining wei
                    args address(mem[580])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 2240] = mem[592 len 20]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 2272] = mem[ceil32(('cd', 516).length) + 624 len 20]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 2304] = mem[288]
                idx = 0
                s = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 2240
                t = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 2500
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(this.address)
                call this.address.0x195a261f with:
                     gas gas_remaining wei
                    args address(cd[4]), ext_call.return_data[32], 1, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 2500 len 64], mem[480] >> 512
            else:
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] = 0xdb123b1a00000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(cd[4]))
                call address(cd[4]).ZRX_ASSET_DATA() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2112
                require return_data.size >= 32
                _1602 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112]
                require mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] <= test266151307()
                require ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + return_data.size + 2112 > ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] + 2143
                _1606 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] + 2112]
                require mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] + 2112] <= test266151307()
                require ceil32(mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] + 2112]) + 32 >= 0 and ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + ceil32(mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] + 2112]) + 2144 <= test266151307()
                mem[64] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + ceil32(mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] + 2112]) + 2144
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2112] = _1606
                require _1602 + _1606 + 32 <= return_data.size
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2144 len ceil32(_1606)] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + _1602 + 2144 len ceil32(_1606)]
                if ceil32(_1606) <= _1606:
                    _2828 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2144]
                    mem[mem[64] + 4] = Mask(32, 224, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2144])
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).getAssetProxy(bytes4 arg1) with:
                         gas gas_remaining wei
                        args Mask(32, 224, _2828)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2871 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2879 = mem[_2871]
                    require ext_code.size(this.address)
                    call this.address.hub() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2919 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(mem[_2919 + 12 len 20])
                    call mem[_2919 + 12 len 20].vault() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3030 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3052 = mem[_3030]
                    _3110 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2148]
                    mem[mem[64]] = 0xf3fef3a300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_3110)
                    mem[mem[64] + 36] = _1573
                    require ext_code.size(address(_3052))
                    call address(_3052).withdraw(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_3110), _1573
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3234 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2148]
                    mem[mem[64] + 4] = address(_2879)
                    mem[mem[64] + 36] = _1573
                    require ext_code.size(address(_3234))
                    call address(_3234).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_2879), _1573
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3353 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_3353]:
                        revert with 0, 'Fee asset could not be approved'
                    _3500 = mem[580]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_3500))
                    call address(_3500).0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3812 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3839 = mem[_3812]
                    mem[mem[64]] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1516 len 20]
                    mem[mem[64] + 132] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1548 len 20]
                    mem[mem[64] + 164] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1580 len 20]
                    mem[mem[64] + 196] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1612 len 20]
                    mem[mem[64] + 228] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                    mem[mem[64] + 260] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                    mem[mem[64] + 292] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1696]
                    mem[mem[64] + 324] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1728]
                    mem[mem[64] + 356] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1760]
                    mem[mem[64] + 388] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1792]
                    mem[mem[64] + 420] = 384
                    mem[mem[64] + 484] = ('cd', 516).length
                    mem[mem[64] + 516 len ceil32(('cd', 516).length)] = call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]
                    if ceil32(('cd', 516).length) <= ('cd', 516).length:
                        mem[mem[64] + 452] = ceil32(('cd', 516).length) + 416
                        mem[mem[64] + ceil32(('cd', 516).length) + 516] = ('cd', 548).length
                        mem[mem[64] + ceil32(('cd', 516).length) + 548 len ceil32(('cd', 548).length)] = call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
                        if ceil32(('cd', 548).length) <= ('cd', 548).length:
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14825 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14897 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14897] = mem[_14825]
                                mem[_14897 + 32] = mem[_14825 + 32]
                                mem[_14897 + 64] = mem[_14825 + 64]
                                mem[_14897 + 96] = mem[_14825 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3500))
                                call address(_3500).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15345 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3839 + mem[_14897] < _3839:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15345] != _3839 + mem[_14897]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14897 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16113 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16113 + 12 len 20])
                                call mem[_16113 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16369 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16433 = mem[_16369]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16433))
                                call address(_16433).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16753 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16753 + 12 len 20])
                                call mem[_16753 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17009 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17009 + 12 len 20])
                                call mem[_17009 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17474 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17474] = address(_45)
                                mem[_17474 + 32] = address(_46)
                                _17475 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17475] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17475 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17475 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17474
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17475 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14865 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14929 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14929] = mem[_14865]
                                mem[_14929 + 32] = mem[_14865 + 32]
                                mem[_14929 + 64] = mem[_14865 + 64]
                                mem[_14929 + 96] = mem[_14865 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3500))
                                call address(_3500).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15377 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3839 + mem[_14929] < _3839:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15377] != _3839 + mem[_14929]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14929 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16145 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16145 + 12 len 20])
                                call mem[_16145 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16401 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16465 = mem[_16401]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16465))
                                call address(_16465).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16785 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16785 + 12 len 20])
                                call mem[_16785 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17041 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17041 + 12 len 20])
                                call mem[_17041 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17666 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17666] = address(_45)
                                mem[_17666 + 32] = address(_46)
                                _17667 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17667] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17667 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17667 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17666
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17667 len 96]
                        else:
                            mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 548] = 0
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14826 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14898 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14898] = mem[_14826]
                                mem[_14898 + 32] = mem[_14826 + 32]
                                mem[_14898 + 64] = mem[_14826 + 64]
                                mem[_14898 + 96] = mem[_14826 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3500))
                                call address(_3500).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15346 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3839 + mem[_14898] < _3839:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15346] != _3839 + mem[_14898]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14898 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16114 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16114 + 12 len 20])
                                call mem[_16114 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16370 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16434 = mem[_16370]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16434))
                                call address(_16434).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16754 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16754 + 12 len 20])
                                call mem[_16754 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17010 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17010 + 12 len 20])
                                call mem[_17010 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17480 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17480] = address(_45)
                                mem[_17480 + 32] = address(_46)
                                _17481 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17481] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17481 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17481 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17480
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17481 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14866 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14930 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14930] = mem[_14866]
                                mem[_14930 + 32] = mem[_14866 + 32]
                                mem[_14930 + 64] = mem[_14866 + 64]
                                mem[_14930 + 96] = mem[_14866 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3500))
                                call address(_3500).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15378 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3839 + mem[_14930] < _3839:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15378] != _3839 + mem[_14930]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14930 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16146 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16146 + 12 len 20])
                                call mem[_16146 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16402 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16466 = mem[_16402]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16466))
                                call address(_16466).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16786 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16786 + 12 len 20])
                                call mem[_16786 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17042 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17042 + 12 len 20])
                                call mem[_17042 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17672 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17672] = address(_45)
                                mem[_17672 + 32] = address(_46)
                                _17673 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17673] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17673 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17673 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17672
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17673 len 96]
                    else:
                        mem[mem[64] + ('cd', 516).length + 516] = 0
                        mem[mem[64] + 452] = ceil32(('cd', 516).length) + 416
                        mem[mem[64] + ceil32(('cd', 516).length) + 516] = ('cd', 548).length
                        mem[mem[64] + ceil32(('cd', 516).length) + 548 len ceil32(('cd', 548).length)] = call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
                        if ceil32(('cd', 548).length) <= ('cd', 548).length:
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14827 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14899 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14899] = mem[_14827]
                                mem[_14899 + 32] = mem[_14827 + 32]
                                mem[_14899 + 64] = mem[_14827 + 64]
                                mem[_14899 + 96] = mem[_14827 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3500))
                                call address(_3500).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15347 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3839 + mem[_14899] < _3839:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15347] != _3839 + mem[_14899]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14899 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16115 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16115 + 12 len 20])
                                call mem[_16115 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16371 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16435 = mem[_16371]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16435))
                                call address(_16435).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16755 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16755 + 12 len 20])
                                call mem[_16755 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17011 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17011 + 12 len 20])
                                call mem[_17011 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17486 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17486] = address(_45)
                                mem[_17486 + 32] = address(_46)
                                _17487 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17487] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17487 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17487 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17486
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17487 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14867 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14931 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14931] = mem[_14867]
                                mem[_14931 + 32] = mem[_14867 + 32]
                                mem[_14931 + 64] = mem[_14867 + 64]
                                mem[_14931 + 96] = mem[_14867 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3500))
                                call address(_3500).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15379 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3839 + mem[_14931] < _3839:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15379] != _3839 + mem[_14931]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14931 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16147 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16147 + 12 len 20])
                                call mem[_16147 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16403 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16467 = mem[_16403]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16467))
                                call address(_16467).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16787 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16787 + 12 len 20])
                                call mem[_16787 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17043 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17043 + 12 len 20])
                                call mem[_17043 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17678 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17678] = address(_45)
                                mem[_17678 + 32] = address(_46)
                                _17679 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17679] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17679 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17679 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17678
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17679 len 96]
                        else:
                            mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 548] = 0
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14828 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14900 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14900] = mem[_14828]
                                mem[_14900 + 32] = mem[_14828 + 32]
                                mem[_14900 + 64] = mem[_14828 + 64]
                                mem[_14900 + 96] = mem[_14828 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3500))
                                call address(_3500).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15348 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3839 + mem[_14900] < _3839:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15348] != _3839 + mem[_14900]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14900 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16116 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16116 + 12 len 20])
                                call mem[_16116 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16372 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16436 = mem[_16372]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16436))
                                call address(_16436).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16756 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16756 + 12 len 20])
                                call mem[_16756 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17012 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17012 + 12 len 20])
                                call mem[_17012 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17492 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17492] = address(_45)
                                mem[_17492 + 32] = address(_46)
                                _17493 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17493] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17493 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17493 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17492
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17493 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14868 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14932 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14932] = mem[_14868]
                                mem[_14932 + 32] = mem[_14868 + 32]
                                mem[_14932 + 64] = mem[_14868 + 64]
                                mem[_14932 + 96] = mem[_14868 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3500))
                                call address(_3500).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15380 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3839 + mem[_14932] < _3839:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15380] != _3839 + mem[_14932]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14932 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16148 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16148 + 12 len 20])
                                call mem[_16148 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16404 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16468 = mem[_16404]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16468))
                                call address(_16468).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16788 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16788 + 12 len 20])
                                call mem[_16788 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17044 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17044 + 12 len 20])
                                call mem[_17044 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17684 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17684] = address(_45)
                                mem[_17684 + 32] = address(_46)
                                _17685 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17685] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17685 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17685 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17684
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17685 len 96]
                else:
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + _1606 + 2144] = 0
                    _2840 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2144]
                    mem[mem[64] + 4] = Mask(32, 224, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2144])
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).getAssetProxy(bytes4 arg1) with:
                         gas gas_remaining wei
                        args Mask(32, 224, _2840)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2875 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2883 = mem[_2875]
                    require ext_code.size(this.address)
                    call this.address.hub() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2926 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(mem[_2926 + 12 len 20])
                    call mem[_2926 + 12 len 20].vault() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3035 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3068 = mem[_3035]
                    _3121 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2148]
                    mem[mem[64]] = 0xf3fef3a300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_3121)
                    mem[mem[64] + 36] = _1573
                    require ext_code.size(address(_3068))
                    call address(_3068).withdraw(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_3121), _1573
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3251 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2148]
                    mem[mem[64] + 4] = address(_2883)
                    mem[mem[64] + 36] = _1573
                    require ext_code.size(address(_3251))
                    call address(_3251).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_2883), _1573
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3368 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_3368]:
                        revert with 0, 'Fee asset could not be approved'
                    _3542 = mem[580]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_3542))
                    call address(_3542).0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3828 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3843 = mem[_3828]
                    mem[mem[64]] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1516 len 20]
                    mem[mem[64] + 132] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1548 len 20]
                    mem[mem[64] + 164] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1580 len 20]
                    mem[mem[64] + 196] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1612 len 20]
                    mem[mem[64] + 228] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                    mem[mem[64] + 260] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                    mem[mem[64] + 292] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1696]
                    mem[mem[64] + 324] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1728]
                    mem[mem[64] + 356] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1760]
                    mem[mem[64] + 388] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1792]
                    mem[mem[64] + 420] = 384
                    mem[mem[64] + 484] = ('cd', 516).length
                    mem[mem[64] + 516 len ceil32(('cd', 516).length)] = call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]
                    if ceil32(('cd', 516).length) <= ('cd', 516).length:
                        mem[mem[64] + 452] = ceil32(('cd', 516).length) + 416
                        mem[mem[64] + ceil32(('cd', 516).length) + 516] = ('cd', 548).length
                        mem[mem[64] + ceil32(('cd', 516).length) + 548 len ceil32(('cd', 548).length)] = call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
                        if ceil32(('cd', 548).length) <= ('cd', 548).length:
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14829 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14901 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14901] = mem[_14829]
                                mem[_14901 + 32] = mem[_14829 + 32]
                                mem[_14901 + 64] = mem[_14829 + 64]
                                mem[_14901 + 96] = mem[_14829 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3542))
                                call address(_3542).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15349 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3843 + mem[_14901] < _3843:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15349] != _3843 + mem[_14901]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14901 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16117 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16117 + 12 len 20])
                                call mem[_16117 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16373 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16437 = mem[_16373]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16437))
                                call address(_16437).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16757 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16757 + 12 len 20])
                                call mem[_16757 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17013 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17013 + 12 len 20])
                                call mem[_17013 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17498 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17498] = address(_45)
                                mem[_17498 + 32] = address(_46)
                                _17499 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17499] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17499 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17499 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17498
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17499 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14869 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14933 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14933] = mem[_14869]
                                mem[_14933 + 32] = mem[_14869 + 32]
                                mem[_14933 + 64] = mem[_14869 + 64]
                                mem[_14933 + 96] = mem[_14869 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3542))
                                call address(_3542).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15381 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3843 + mem[_14933] < _3843:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15381] != _3843 + mem[_14933]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14933 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16149 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16149 + 12 len 20])
                                call mem[_16149 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16405 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16469 = mem[_16405]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16469))
                                call address(_16469).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16789 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16789 + 12 len 20])
                                call mem[_16789 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17045 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17045 + 12 len 20])
                                call mem[_17045 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17690 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17690] = address(_45)
                                mem[_17690 + 32] = address(_46)
                                _17691 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17691] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17691 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17691 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17690
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17691 len 96]
                        else:
                            mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 548] = 0
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14830 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14902 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14902] = mem[_14830]
                                mem[_14902 + 32] = mem[_14830 + 32]
                                mem[_14902 + 64] = mem[_14830 + 64]
                                mem[_14902 + 96] = mem[_14830 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3542))
                                call address(_3542).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15350 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3843 + mem[_14902] < _3843:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15350] != _3843 + mem[_14902]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14902 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16118 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16118 + 12 len 20])
                                call mem[_16118 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16374 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16438 = mem[_16374]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16438))
                                call address(_16438).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16758 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16758 + 12 len 20])
                                call mem[_16758 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17014 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17014 + 12 len 20])
                                call mem[_17014 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17504 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17504] = address(_45)
                                mem[_17504 + 32] = address(_46)
                                _17505 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17505] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17505 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17505 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17504
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17505 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14870 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14934 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14934] = mem[_14870]
                                mem[_14934 + 32] = mem[_14870 + 32]
                                mem[_14934 + 64] = mem[_14870 + 64]
                                mem[_14934 + 96] = mem[_14870 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3542))
                                call address(_3542).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15382 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3843 + mem[_14934] < _3843:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15382] != _3843 + mem[_14934]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14934 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16150 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16150 + 12 len 20])
                                call mem[_16150 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16406 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16470 = mem[_16406]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16470))
                                call address(_16470).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16790 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16790 + 12 len 20])
                                call mem[_16790 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17046 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17046 + 12 len 20])
                                call mem[_17046 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17696 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17696] = address(_45)
                                mem[_17696 + 32] = address(_46)
                                _17697 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17697] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17697 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17697 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17696
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17697 len 96]
                    else:
                        mem[mem[64] + ('cd', 516).length + 516] = 0
                        mem[mem[64] + 452] = ceil32(('cd', 516).length) + 416
                        mem[mem[64] + ceil32(('cd', 516).length) + 516] = ('cd', 548).length
                        mem[mem[64] + ceil32(('cd', 516).length) + 548 len ceil32(('cd', 548).length)] = call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
                        if ceil32(('cd', 548).length) <= ('cd', 548).length:
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14831 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14903 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14903] = mem[_14831]
                                mem[_14903 + 32] = mem[_14831 + 32]
                                mem[_14903 + 64] = mem[_14831 + 64]
                                mem[_14903 + 96] = mem[_14831 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3542))
                                call address(_3542).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15351 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3843 + mem[_14903] < _3843:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15351] != _3843 + mem[_14903]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14903 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16119 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16119 + 12 len 20])
                                call mem[_16119 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16375 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16439 = mem[_16375]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16439))
                                call address(_16439).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16759 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16759 + 12 len 20])
                                call mem[_16759 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17015 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17015 + 12 len 20])
                                call mem[_17015 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17510 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17510] = address(_45)
                                mem[_17510 + 32] = address(_46)
                                _17511 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17511] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17511 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17511 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17510
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17511 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14871 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14935 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14935] = mem[_14871]
                                mem[_14935 + 32] = mem[_14871 + 32]
                                mem[_14935 + 64] = mem[_14871 + 64]
                                mem[_14935 + 96] = mem[_14871 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3542))
                                call address(_3542).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15383 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3843 + mem[_14935] < _3843:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15383] != _3843 + mem[_14935]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14935 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16151 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16151 + 12 len 20])
                                call mem[_16151 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16407 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16471 = mem[_16407]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16471))
                                call address(_16471).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16791 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16791 + 12 len 20])
                                call mem[_16791 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17047 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17047 + 12 len 20])
                                call mem[_17047 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17702 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17702] = address(_45)
                                mem[_17702 + 32] = address(_46)
                                _17703 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17703] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17703 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17703 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17702
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17703 len 96]
                        else:
                            mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 548] = 0
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14832 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14904 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14904] = mem[_14832]
                                mem[_14904 + 32] = mem[_14832 + 32]
                                mem[_14904 + 64] = mem[_14832 + 64]
                                mem[_14904 + 96] = mem[_14832 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3542))
                                call address(_3542).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15352 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3843 + mem[_14904] < _3843:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15352] != _3843 + mem[_14904]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14904 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16120 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16120 + 12 len 20])
                                call mem[_16120 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16376 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16440 = mem[_16376]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16440))
                                call address(_16440).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16760 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16760 + 12 len 20])
                                call mem[_16760 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17016 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17016 + 12 len 20])
                                call mem[_17016 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17516 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17516] = address(_45)
                                mem[_17516 + 32] = address(_46)
                                _17517 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17517] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17517 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17517 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17516
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17517 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14872 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14936 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14936] = mem[_14872]
                                mem[_14936 + 32] = mem[_14872 + 32]
                                mem[_14936 + 64] = mem[_14872 + 64]
                                mem[_14936 + 96] = mem[_14872 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3542))
                                call address(_3542).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15384 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3843 + mem[_14936] < _3843:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15384] != _3843 + mem[_14936]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14936 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16152 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16152 + 12 len 20])
                                call mem[_16152 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16408 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16472 = mem[_16408]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16472))
                                call address(_16472).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16792 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16792 + 12 len 20])
                                call mem[_16792 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17048 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17048 + 12 len 20])
                                call mem[_17048 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17708 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17708] = address(_45)
                                mem[_17708 + 32] = address(_46)
                                _17709 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17709] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17709 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17709 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17708
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17709 len 96]
                require ext_code.size(this.address)
                call this.address.0x195a261f with:
                     gas gas_remaining wei
                    args address(cd[4]), ext_call.return_data[32], 1, mem[mem[64] + 100 len 160]
        else:
            mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + ('cd', 548).length + 2372] = 0
            require ext_code.size(address(cd[4]))
            call address(cd[4]).getOrderInfo(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12) with:
                 gas gas_remaining wei
                args 32, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 1924 len 128], mem[288], mem[320], mem[352], mem[384], mem[416], mem[448], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, Mask(8 * ceil32(('cd', 516).length), -(8 * ceil32(('cd', 516).length)) + 256, call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]) << (8 * ceil32(('cd', 516).length)) - 256, ('cd', 548).length, call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 1888 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require bool(ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 1984 <= test266151307())
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 1888] = ext_call.return_data[31 len 1]
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 1920] = ext_call.return_data[32]
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 1952] = ext_call.return_data[64]
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 1984] = 0
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2016] = 0
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2048] = 0
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2080] = 0
            _1582 = mem[384]
            if mem[384] <= 0:
                require ext_code.size(mem[592 len 20])
                call mem[592 len 20].0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2212] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1516 len 20]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2244] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1548 len 20]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2276] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1580 len 20]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2308] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1612 len 20]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2340] = mem[288]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2372] = mem[320]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2404] = mem[352]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2436] = mem[384]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2468] = mem[416]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2500] = mem[448]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2532] = 384
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2596] = ('cd', 516).length
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2628 len ceil32(('cd', 516).length)] = call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]
                if ceil32(('cd', 516).length) > ('cd', 516).length:
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + ('cd', 516).length + 2628] = 0
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2564] = ceil32(('cd', 516).length) + 416
                mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2628] = ('cd', 548).length
                mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2660 len ceil32(('cd', 548).length)] = call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
                if ceil32(('cd', 548).length) > ('cd', 548).length:
                    mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + ('cd', 548).length + 2660] = 0
                mem[(2 * ceil32(('cd', 516).length)) + (2 * ceil32(('cd', 548).length)) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2660] = ('cd', 580).length
                mem[(2 * ceil32(('cd', 516).length)) + (2 * ceil32(('cd', 548).length)) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2692 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                if ceil32(('cd', 580).length) > ('cd', 580).length:
                    mem[(2 * ceil32(('cd', 516).length)) + (2 * ceil32(('cd', 548).length)) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + ('cd', 580).length + 2692] = 0
                require ext_code.size(address(cd[4]))
                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                     gas gas_remaining wei
                    args 96, mem[480], ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2212 len 128], mem[288], mem[320], mem[352], mem[384], mem[416], mem[448], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, Mask(8 * ceil32(('cd', 516).length), -(8 * ceil32(('cd', 516).length)) + 256, call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]) << (8 * ceil32(('cd', 516).length)) - 256, ('cd', 548).length, Mask(8 * ceil32(('cd', 548).length), -(8 * ceil32(('cd', 548).length)) + 256, call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]) << (8 * ceil32(('cd', 548).length)) - 256, ('cd', 580).length, call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                require bool(ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 2240 <= test266151307())
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 2244] = this.address
                require ext_code.size(mem[592 len 20])
                call mem[592 len 20].0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 2240] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'ds-math-add-overflow'
                if ext_call.return_data[0] != 2 * ext_call.return_data[0]:
                    revert with 0, 'Maker asset balance different than expected'
                if ext_call.return_data[32] != mem[480]:
                    revert with 0, 'Filled amount does not match desired fill amount'
                require ext_code.size(this.address)
                call this.address.hub() with:
                     gas gas_remaining wei
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (16 * ceil32(return_data.size)) + 2240] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(ext_call.return_data[12 len 20])
                call ext_call.return_data[12 len 20].accounting() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 2244] = mem[592 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).addAssetToOwnedAssets(address arg1) with:
                     gas gas_remaining wei
                    args address(mem[580])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(this.address)
                call this.address.hub() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(ext_call.return_data[12 len 20])
                call ext_call.return_data[12 len 20].accounting() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(ext_call.return_data[12 len 20])
                call ext_call.return_data[12 len 20].0x71b58058 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(this.address)
                call this.address.returnAssetToVault(address arg1) with:
                     gas gas_remaining wei
                    args address(mem[580])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 2240] = mem[592 len 20]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 2272] = mem[ceil32(('cd', 516).length) + 624 len 20]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 2304] = mem[288]
                idx = 0
                s = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 2240
                t = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 2500
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(this.address)
                call this.address.0x195a261f with:
                     gas gas_remaining wei
                    args address(cd[4]), ext_call.return_data[32], 1, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 2500 len 64], mem[480] >> 512
            else:
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] = 0xdb123b1a00000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(cd[4]))
                call address(cd[4]).ZRX_ASSET_DATA() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2112
                require return_data.size >= 32
                _1604 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112]
                require mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] <= test266151307()
                require ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + return_data.size + 2112 > ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] + 2143
                _1608 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] + 2112]
                require mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] + 2112] <= test266151307()
                require ceil32(mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] + 2112]) + 32 >= 0 and ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + ceil32(mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] + 2112]) + 2144 <= test266151307()
                mem[64] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + ceil32(mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 2112] + 2112]) + 2144
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2112] = _1608
                require _1604 + _1608 + 32 <= return_data.size
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2144 len ceil32(_1608)] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + _1604 + 2144 len ceil32(_1608)]
                if ceil32(_1608) <= _1608:
                    _2831 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2144]
                    mem[mem[64] + 4] = Mask(32, 224, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2144])
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).getAssetProxy(bytes4 arg1) with:
                         gas gas_remaining wei
                        args Mask(32, 224, _2831)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2872 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2880 = mem[_2872]
                    require ext_code.size(this.address)
                    call this.address.hub() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2920 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(mem[_2920 + 12 len 20])
                    call mem[_2920 + 12 len 20].vault() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3032 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3056 = mem[_3032]
                    _3112 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2148]
                    mem[mem[64]] = 0xf3fef3a300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_3112)
                    mem[mem[64] + 36] = _1582
                    require ext_code.size(address(_3056))
                    call address(_3056).withdraw(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_3112), _1582
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3236 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2148]
                    mem[mem[64] + 4] = address(_2880)
                    mem[mem[64] + 36] = _1582
                    require ext_code.size(address(_3236))
                    call address(_3236).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_2880), _1582
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3356 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_3356]:
                        revert with 0, 'Fee asset could not be approved'
                    _3510 = mem[580]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_3510))
                    call address(_3510).0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3816 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3840 = mem[_3816]
                    mem[mem[64]] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1516 len 20]
                    mem[mem[64] + 132] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1548 len 20]
                    mem[mem[64] + 164] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1580 len 20]
                    mem[mem[64] + 196] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1612 len 20]
                    mem[mem[64] + 228] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                    mem[mem[64] + 260] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                    mem[mem[64] + 292] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1696]
                    mem[mem[64] + 324] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1728]
                    mem[mem[64] + 356] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1760]
                    mem[mem[64] + 388] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1792]
                    mem[mem[64] + 420] = 384
                    mem[mem[64] + 484] = ('cd', 516).length
                    mem[mem[64] + 516 len ceil32(('cd', 516).length)] = call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]
                    if ceil32(('cd', 516).length) <= ('cd', 516).length:
                        mem[mem[64] + 452] = ceil32(('cd', 516).length) + 416
                        mem[mem[64] + ceil32(('cd', 516).length) + 516] = ('cd', 548).length
                        mem[mem[64] + ceil32(('cd', 516).length) + 548 len ceil32(('cd', 548).length)] = call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
                        if ceil32(('cd', 548).length) <= ('cd', 548).length:
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14841 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14905 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14905] = mem[_14841]
                                mem[_14905 + 32] = mem[_14841 + 32]
                                mem[_14905 + 64] = mem[_14841 + 64]
                                mem[_14905 + 96] = mem[_14841 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3510))
                                call address(_3510).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15353 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3840 + mem[_14905] < _3840:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15353] != _3840 + mem[_14905]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14905 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16121 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16121 + 12 len 20])
                                call mem[_16121 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16377 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16441 = mem[_16377]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16441))
                                call address(_16441).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16761 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16761 + 12 len 20])
                                call mem[_16761 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17017 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17017 + 12 len 20])
                                call mem[_17017 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17522 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17522] = address(_45)
                                mem[_17522 + 32] = address(_46)
                                _17523 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17523] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17523 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17523 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17522
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17523 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14873 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14937 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14937] = mem[_14873]
                                mem[_14937 + 32] = mem[_14873 + 32]
                                mem[_14937 + 64] = mem[_14873 + 64]
                                mem[_14937 + 96] = mem[_14873 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3510))
                                call address(_3510).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15385 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3840 + mem[_14937] < _3840:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15385] != _3840 + mem[_14937]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14937 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16153 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16153 + 12 len 20])
                                call mem[_16153 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16409 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16473 = mem[_16409]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16473))
                                call address(_16473).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16793 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16793 + 12 len 20])
                                call mem[_16793 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17049 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17049 + 12 len 20])
                                call mem[_17049 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17714 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17714] = address(_45)
                                mem[_17714 + 32] = address(_46)
                                _17715 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17715] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17715 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17715 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17714
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17715 len 96]
                        else:
                            mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 548] = 0
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14842 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14906 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14906] = mem[_14842]
                                mem[_14906 + 32] = mem[_14842 + 32]
                                mem[_14906 + 64] = mem[_14842 + 64]
                                mem[_14906 + 96] = mem[_14842 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3510))
                                call address(_3510).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15354 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3840 + mem[_14906] < _3840:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15354] != _3840 + mem[_14906]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14906 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16122 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16122 + 12 len 20])
                                call mem[_16122 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16378 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16442 = mem[_16378]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16442))
                                call address(_16442).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16762 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16762 + 12 len 20])
                                call mem[_16762 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17018 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17018 + 12 len 20])
                                call mem[_17018 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17528 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17528] = address(_45)
                                mem[_17528 + 32] = address(_46)
                                _17529 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17529] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17529 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17529 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17528
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17529 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14874 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14938 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14938] = mem[_14874]
                                mem[_14938 + 32] = mem[_14874 + 32]
                                mem[_14938 + 64] = mem[_14874 + 64]
                                mem[_14938 + 96] = mem[_14874 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3510))
                                call address(_3510).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15386 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3840 + mem[_14938] < _3840:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15386] != _3840 + mem[_14938]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14938 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16154 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16154 + 12 len 20])
                                call mem[_16154 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16410 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16474 = mem[_16410]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16474))
                                call address(_16474).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16794 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16794 + 12 len 20])
                                call mem[_16794 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17050 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17050 + 12 len 20])
                                call mem[_17050 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17720 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17720] = address(_45)
                                mem[_17720 + 32] = address(_46)
                                _17721 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17721] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17721 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17721 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17720
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17721 len 96]
                    else:
                        mem[mem[64] + ('cd', 516).length + 516] = 0
                        mem[mem[64] + 452] = ceil32(('cd', 516).length) + 416
                        mem[mem[64] + ceil32(('cd', 516).length) + 516] = ('cd', 548).length
                        mem[mem[64] + ceil32(('cd', 516).length) + 548 len ceil32(('cd', 548).length)] = call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
                        if ceil32(('cd', 548).length) <= ('cd', 548).length:
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14843 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14907 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14907] = mem[_14843]
                                mem[_14907 + 32] = mem[_14843 + 32]
                                mem[_14907 + 64] = mem[_14843 + 64]
                                mem[_14907 + 96] = mem[_14843 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3510))
                                call address(_3510).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15355 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3840 + mem[_14907] < _3840:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15355] != _3840 + mem[_14907]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14907 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16123 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16123 + 12 len 20])
                                call mem[_16123 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16379 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16443 = mem[_16379]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16443))
                                call address(_16443).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16763 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16763 + 12 len 20])
                                call mem[_16763 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17019 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17019 + 12 len 20])
                                call mem[_17019 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17534 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17534] = address(_45)
                                mem[_17534 + 32] = address(_46)
                                _17535 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17535] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17535 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17535 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17534
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17535 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14875 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14939 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14939] = mem[_14875]
                                mem[_14939 + 32] = mem[_14875 + 32]
                                mem[_14939 + 64] = mem[_14875 + 64]
                                mem[_14939 + 96] = mem[_14875 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3510))
                                call address(_3510).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15387 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3840 + mem[_14939] < _3840:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15387] != _3840 + mem[_14939]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14939 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16155 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16155 + 12 len 20])
                                call mem[_16155 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16411 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16475 = mem[_16411]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16475))
                                call address(_16475).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16795 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16795 + 12 len 20])
                                call mem[_16795 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17051 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17051 + 12 len 20])
                                call mem[_17051 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17726 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17726] = address(_45)
                                mem[_17726 + 32] = address(_46)
                                _17727 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17727] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17727 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17727 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17726
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17727 len 96]
                        else:
                            mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 548] = 0
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14844 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14908 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14908] = mem[_14844]
                                mem[_14908 + 32] = mem[_14844 + 32]
                                mem[_14908 + 64] = mem[_14844 + 64]
                                mem[_14908 + 96] = mem[_14844 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3510))
                                call address(_3510).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15356 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3840 + mem[_14908] < _3840:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15356] != _3840 + mem[_14908]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14908 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16124 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16124 + 12 len 20])
                                call mem[_16124 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16380 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16444 = mem[_16380]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16444))
                                call address(_16444).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16764 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16764 + 12 len 20])
                                call mem[_16764 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17020 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17020 + 12 len 20])
                                call mem[_17020 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17540 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17540] = address(_45)
                                mem[_17540 + 32] = address(_46)
                                _17541 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17541] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17541 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17541 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17540
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17541 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14876 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14940 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14940] = mem[_14876]
                                mem[_14940 + 32] = mem[_14876 + 32]
                                mem[_14940 + 64] = mem[_14876 + 64]
                                mem[_14940 + 96] = mem[_14876 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3510))
                                call address(_3510).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15388 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3840 + mem[_14940] < _3840:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15388] != _3840 + mem[_14940]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14940 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16156 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16156 + 12 len 20])
                                call mem[_16156 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16412 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16476 = mem[_16412]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16476))
                                call address(_16476).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16796 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16796 + 12 len 20])
                                call mem[_16796 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17052 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17052 + 12 len 20])
                                call mem[_17052 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17732 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17732] = address(_45)
                                mem[_17732 + 32] = address(_46)
                                _17733 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17733] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17733 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17733 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17732
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17733 len 96]
                else:
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + _1608 + 2144] = 0
                    _2843 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2144]
                    mem[mem[64] + 4] = Mask(32, 224, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2144])
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).getAssetProxy(bytes4 arg1) with:
                         gas gas_remaining wei
                        args Mask(32, 224, _2843)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2876 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2884 = mem[_2876]
                    require ext_code.size(this.address)
                    call this.address.hub() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2928 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(mem[_2928 + 12 len 20])
                    call mem[_2928 + 12 len 20].vault() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3036 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3072 = mem[_3036]
                    _3124 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2148]
                    mem[mem[64]] = 0xf3fef3a300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_3124)
                    mem[mem[64] + 36] = _1582
                    require ext_code.size(address(_3072))
                    call address(_3072).withdraw(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_3124), _1582
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3256 = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 2148]
                    mem[mem[64] + 4] = address(_2884)
                    mem[mem[64] + 36] = _1582
                    require ext_code.size(address(_3256))
                    call address(_3256).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_2884), _1582
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3372 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_3372]:
                        revert with 0, 'Fee asset could not be approved'
                    _3552 = mem[580]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_3552))
                    call address(_3552).0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3832 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3844 = mem[_3832]
                    mem[mem[64]] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    mem[mem[64] + 100] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1516 len 20]
                    mem[mem[64] + 132] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1548 len 20]
                    mem[mem[64] + 164] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1580 len 20]
                    mem[mem[64] + 196] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1612 len 20]
                    mem[mem[64] + 228] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                    mem[mem[64] + 260] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                    mem[mem[64] + 292] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1696]
                    mem[mem[64] + 324] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1728]
                    mem[mem[64] + 356] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1760]
                    mem[mem[64] + 388] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1792]
                    mem[mem[64] + 420] = 384
                    mem[mem[64] + 484] = ('cd', 516).length
                    mem[mem[64] + 516 len ceil32(('cd', 516).length)] = call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]
                    if ceil32(('cd', 516).length) <= ('cd', 516).length:
                        mem[mem[64] + 452] = ceil32(('cd', 516).length) + 416
                        mem[mem[64] + ceil32(('cd', 516).length) + 516] = ('cd', 548).length
                        mem[mem[64] + ceil32(('cd', 516).length) + 548 len ceil32(('cd', 548).length)] = call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
                        if ceil32(('cd', 548).length) <= ('cd', 548).length:
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14845 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14909 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14909] = mem[_14845]
                                mem[_14909 + 32] = mem[_14845 + 32]
                                mem[_14909 + 64] = mem[_14845 + 64]
                                mem[_14909 + 96] = mem[_14845 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3552))
                                call address(_3552).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15357 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3844 + mem[_14909] < _3844:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15357] != _3844 + mem[_14909]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14909 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16125 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16125 + 12 len 20])
                                call mem[_16125 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16381 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16445 = mem[_16381]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16445))
                                call address(_16445).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16765 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16765 + 12 len 20])
                                call mem[_16765 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17021 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17021 + 12 len 20])
                                call mem[_17021 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17546 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17546] = address(_45)
                                mem[_17546 + 32] = address(_46)
                                _17547 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17547] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17547 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17547 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17546
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17547 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14877 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14941 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14941] = mem[_14877]
                                mem[_14941 + 32] = mem[_14877 + 32]
                                mem[_14941 + 64] = mem[_14877 + 64]
                                mem[_14941 + 96] = mem[_14877 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3552))
                                call address(_3552).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15389 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3844 + mem[_14941] < _3844:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15389] != _3844 + mem[_14941]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14941 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16157 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16157 + 12 len 20])
                                call mem[_16157 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16413 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16477 = mem[_16413]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16477))
                                call address(_16477).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16797 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16797 + 12 len 20])
                                call mem[_16797 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17053 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17053 + 12 len 20])
                                call mem[_17053 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17738 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17738] = address(_45)
                                mem[_17738 + 32] = address(_46)
                                _17739 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17739] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17739 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17739 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17738
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17739 len 96]
                        else:
                            mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 548] = 0
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14846 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14910 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14910] = mem[_14846]
                                mem[_14910 + 32] = mem[_14846 + 32]
                                mem[_14910 + 64] = mem[_14846 + 64]
                                mem[_14910 + 96] = mem[_14846 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3552))
                                call address(_3552).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15358 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3844 + mem[_14910] < _3844:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15358] != _3844 + mem[_14910]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14910 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16126 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16126 + 12 len 20])
                                call mem[_16126 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16382 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16446 = mem[_16382]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16446))
                                call address(_16446).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16766 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16766 + 12 len 20])
                                call mem[_16766 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17022 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17022 + 12 len 20])
                                call mem[_17022 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17552 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17552] = address(_45)
                                mem[_17552 + 32] = address(_46)
                                _17553 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17553] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17553 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17553 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17552
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17553 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14878 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14942 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14942] = mem[_14878]
                                mem[_14942 + 32] = mem[_14878 + 32]
                                mem[_14942 + 64] = mem[_14878 + 64]
                                mem[_14942 + 96] = mem[_14878 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3552))
                                call address(_3552).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15390 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3844 + mem[_14942] < _3844:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15390] != _3844 + mem[_14942]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14942 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16158 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16158 + 12 len 20])
                                call mem[_16158 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16414 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16478 = mem[_16414]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16478))
                                call address(_16478).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16798 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16798 + 12 len 20])
                                call mem[_16798 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17054 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17054 + 12 len 20])
                                call mem[_17054 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17744 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17744] = address(_45)
                                mem[_17744 + 32] = address(_46)
                                _17745 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17745] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17745 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17745 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17744
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17745 len 96]
                    else:
                        mem[mem[64] + ('cd', 516).length + 516] = 0
                        mem[mem[64] + 452] = ceil32(('cd', 516).length) + 416
                        mem[mem[64] + ceil32(('cd', 516).length) + 516] = ('cd', 548).length
                        mem[mem[64] + ceil32(('cd', 516).length) + 548 len ceil32(('cd', 548).length)] = call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
                        if ceil32(('cd', 548).length) <= ('cd', 548).length:
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14847 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14911 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14911] = mem[_14847]
                                mem[_14911 + 32] = mem[_14847 + 32]
                                mem[_14911 + 64] = mem[_14847 + 64]
                                mem[_14911 + 96] = mem[_14847 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3552))
                                call address(_3552).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15359 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3844 + mem[_14911] < _3844:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15359] != _3844 + mem[_14911]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14911 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16127 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16127 + 12 len 20])
                                call mem[_16127 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16383 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16447 = mem[_16383]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16447))
                                call address(_16447).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16767 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16767 + 12 len 20])
                                call mem[_16767 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17023 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17023 + 12 len 20])
                                call mem[_17023 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17558 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17558] = address(_45)
                                mem[_17558 + 32] = address(_46)
                                _17559 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17559] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17559 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17559 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17558
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17559 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 32], ('cd', 580).length, mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14879 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14943 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14943] = mem[_14879]
                                mem[_14943 + 32] = mem[_14879 + 32]
                                mem[_14943 + 64] = mem[_14879 + 64]
                                mem[_14943 + 96] = mem[_14879 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3552))
                                call address(_3552).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15391 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3844 + mem[_14943] < _3844:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15391] != _3844 + mem[_14943]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14943 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16159 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16159 + 12 len 20])
                                call mem[_16159 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16415 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16479 = mem[_16415]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16479))
                                call address(_16479).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16799 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16799 + 12 len 20])
                                call mem[_16799 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17055 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17055 + 12 len 20])
                                call mem[_17055 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17750 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17750] = address(_45)
                                mem[_17750 + 32] = address(_46)
                                _17751 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17751] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17751 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17751 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17750
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17751 len 96]
                        else:
                            mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 548] = 0
                            mem[mem[64] + 36] = _44
                            mem[mem[64] + 68] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 548] = ('cd', 580).length
                            mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 580 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                            if ceil32(('cd', 580).length) <= ('cd', 580).length:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14848 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14912 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14912] = mem[_14848]
                                mem[_14912 + 32] = mem[_14848 + 32]
                                mem[_14912 + 64] = mem[_14848 + 64]
                                mem[_14912 + 96] = mem[_14848 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3552))
                                call address(_3552).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15360 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3844 + mem[_14912] < _3844:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15360] != _3844 + mem[_14912]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14912 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16128 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16128 + 12 len 20])
                                call mem[_16128 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16384 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16448 = mem[_16384]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16448))
                                call address(_16448).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16768 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16768 + 12 len 20])
                                call mem[_16768 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17024 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17024 + 12 len 20])
                                call mem[_17024 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17564 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17564] = address(_45)
                                mem[_17564 + 32] = address(_46)
                                _17565 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17565] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17565 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17565 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17564
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17565 len 96]
                            else:
                                mem[mem[64] + ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 580] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _44, ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 544, mem[mem[64] + 100 len 320], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[mem[64] + 516 len ceil32(('cd', 516).length) + ('cd', 548).length + 32], 0, mem[mem[64] + ceil32(('cd', 516).length) + ('cd', 548).length + 580 len ceil32(('cd', 548).length) + ceil32(('cd', 580).length) - ('cd', 548).length]
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14880 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _14944 = mem[64]
                                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                                mem[64] = mem[64] + 128
                                mem[_14944] = mem[_14880]
                                mem[_14944 + 32] = mem[_14880 + 32]
                                mem[_14944 + 64] = mem[_14880 + 64]
                                mem[_14944 + 96] = mem[_14880 + 96]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3552))
                                call address(_3552).0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15392 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3844 + mem[_14944] < _3844:
                                    revert with 0, 'ds-math-add-overflow'
                                if mem[_15392] != _3844 + mem[_14944]:
                                    revert with 0, 'Maker asset balance different than expected'
                                if mem[_14944 + 32] != _44:
                                    revert with 0, 'Filled amount does not match desired fill amount'
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16160 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16160 + 12 len 20])
                                call mem[_16160 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16416 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16480 = mem[_16416]
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(address(_16480))
                                call address(_16480).addAssetToOwnedAssets(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(this.address)
                                call this.address.hub() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16800 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_16800 + 12 len 20])
                                call mem[_16800 + 12 len 20].accounting() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17056 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(mem[_17056 + 12 len 20])
                                call mem[_17056 + 12 len 20].0x71b58058 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x19ab7f4300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_45)
                                require ext_code.size(this.address)
                                call this.address.returnAssetToVault(address arg1) with:
                                     gas gas_remaining wei
                                    args address(_45)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17756 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_17756] = address(_45)
                                mem[_17756 + 32] = address(_46)
                                _17757 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_17757] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1632]
                                mem[_17757 + 32] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1664]
                                mem[_17757 + 64] = _44
                                mem[mem[64]] = 0x195a261f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = ext_call.return_data[32]
                                mem[mem[64] + 68] = 1
                                idx = 0
                                s = _17756
                                t = mem[64] + 100
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 164 len 96] = mem[_17757 len 96]
                require ext_code.size(this.address)
                call this.address.0x195a261f with:
                     gas gas_remaining wei
                    args address(cd[4]), ext_call.return_data[32], 1, mem[mem[64] + 100 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
