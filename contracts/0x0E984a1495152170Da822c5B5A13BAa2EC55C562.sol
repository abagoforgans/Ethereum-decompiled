contract main {




// =====================  Runtime code  =====================


#
#  - sub_61346679(?)
#
function _fallback() payable {
    revert
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
    require cd[516] + ('cd', 516).length + 36 <= calldata.size
    require cd[548] <= test266151307()
    require calldata.size > cd[548] + 35
    require ('cd', 548).length <= test266151307()
    require ceil32(('cd', 548).length) + 608 >= 576 and ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + 608 <= test266151307()
    require cd[548] + ('cd', 548).length + 36 <= calldata.size
    require cd[580] <= test266151307()
    require calldata.size > cd[580] + 35
    require ('cd', 580).length <= test266151307()
    require ceil32(('cd', 580).length) + 640 >= 608 and ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 640 <= test266151307()
    require cd[580] + ('cd', 580).length + 36 <= calldata.size
    revert with 0, 'Unimplemented'
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
    if ext_call.return_data[96] - ext_call.return_data[0] > ext_call.return_data[96]:
        revert with 0, 'ds-math-sub-underflow'
    if not ext_call.return_data[96] - ext_call.return_data[0]:
        return address(arg2), address(ext_call.return_data[32]), 0, 0
    require ext_code.size(msg.sender)
    call msg.sender.registry() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x5769fc33 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xaa8dd7c8 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return address(arg2), address(ext_call.return_data[32]), 0, 0
    if ext_call.return_data[96] - ext_call.return_data[0] > ext_call.return_data[96]:
        revert with 0, 'ds-math-sub-underflow'
    return address(arg2), 
           address(ext_call.return_data[32]),
           ext_call.return_data[64],
           ext_call.return_data[96] - ext_call.return_data[0]
}

function sub_38c95122(?) {
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
    require ext_code.size(this.address)
    call this.address.hub() with:
         gas gas_remaining wei
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + 640] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(Mask(8 * -ceil32(('cd', 580).length) + ('cd', 580).length + 20, 0, 0), mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 672 len -('cd', 580).length + ceil32(('cd', 580).length)])
    call Mask(8 * -ceil32(('cd', 580).length) + ('cd', 580).length + 20, 0, 0), mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 672 len -('cd', 580).length + ceil32(('cd', 580).length)].accounting() with:
         gas gas_remaining wei
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + ceil32(return_data.size) + 640] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ext_call.return_data[12 len 20])
    call ext_call.return_data[12 len 20].NATIVE_ASSET() with:
         gas gas_remaining wei
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (4 * ceil32(return_data.size)) + 640
    require return_data.size >= 32
    idx = 0
    while idx < 6:
        if mem[(32 * idx) + 108 len 20]:
            require idx < 6
            _56 = mem[(32 * idx) + 96]
            require ext_code.size(this.address)
            call this.address.registry() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _59 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require ext_code.size(mem[_59 + 12 len 20])
            call mem[_59 + 12 len 20].0x5769fc33 with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _63 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _64 = mem[_63]
            mem[mem[64] + 4] = address(_56)
            require ext_code.size(address(_64))
            call address(_64).0xaa8dd7c8 with:
                 gas gas_remaining wei
                args address(_56)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _67 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _68 = mem[_67]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_68))
            call address(_68).0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _71 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _72 = mem[_71]
            mem[mem[64] + 4] = mem[_71]
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = 0
            mem[mem[64] + 132] = 0
            require ext_code.size(address(_68))
            call address(_68).withdraw(uint256 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], 0, 0, 0, 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < 6
            if mem[(32 * idx) + 108 len 20] != address(ext_call.return_data[0]):
                require idx < 6
                _80 = mem[(32 * idx) + 96]
                mem[mem[64]] = 0xfcfdcf8a00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[4])
                mem[mem[64] + 36] = address(_80)
                require ext_code.size(this.address)
                call this.address.removeOpenMakeOrder(address arg1, address arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), address(_80)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < 6
                _86 = mem[(32 * idx) + 96]
                mem[mem[64] + 4] = mem[(32 * idx) + 108 len 20]
                require ext_code.size(this.address)
                call this.address.returnAssetToVault(address arg1) with:
                     gas gas_remaining wei
                    args address(_86)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(this.address)
                call this.address.hub() with:
                     gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _94 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require ext_code.size(mem[_94 + 12 len 20])
                call mem[_94 + 12 len 20].accounting() with:
                     gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _102 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _105 = mem[_102]
                require idx < 6
                _108 = mem[(32 * idx) + 96]
                mem[mem[64]] = 0x7afbe7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_108)
                require ext_code.size(address(_105))
                call address(_105).addAssetToOwnedAssets(address arg1) with:
                     gas gas_remaining wei
                    args address(_108)
            else:
                mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).deposit() with:
                   value _72 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < 6
                _82 = mem[(32 * idx) + 96]
                mem[mem[64]] = 0xfcfdcf8a00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[4])
                mem[mem[64] + 36] = address(_82)
                require ext_code.size(this.address)
                call this.address.removeOpenMakeOrder(address arg1, address arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), address(_82)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < 6
                _88 = mem[(32 * idx) + 96]
                mem[mem[64] + 4] = mem[(32 * idx) + 108 len 20]
                require ext_code.size(this.address)
                call this.address.returnAssetToVault(address arg1) with:
                     gas gas_remaining wei
                    args address(_88)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(this.address)
                call this.address.hub() with:
                     gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _98 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require ext_code.size(mem[_98 + 12 len 20])
                call mem[_98 + 12 len 20].accounting() with:
                     gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _106 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _107 = mem[_106]
                require idx < 6
                _110 = mem[(32 * idx) + 96]
                mem[mem[64]] = 0x7afbe7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_110)
                require ext_code.size(address(_107))
                call address(_107).addAssetToOwnedAssets(address arg1) with:
                     gas gas_remaining wei
                    args address(_110)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
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
    require ext_code.size(this.address)
    call this.address.updateAndGetQuantityBeingTraded(address arg1) with:
         gas gas_remaining wei
        args address(mem[160])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1892] = mem[172 len 20]
    require ext_code.size(this.address)
    call this.address.isInOpenMakeOrder(address arg1) with:
         gas gas_remaining wei
        args address(mem[160])
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (8 * ceil32(return_data.size)) + 1888] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'This asset is already in an open make order'
    require ext_code.size(this.address)
    call this.address.hub() with:
         gas gas_remaining wei
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (10 * ceil32(return_data.size)) + 1888] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ext_call.return_data[12 len 20])
    call ext_call.return_data[12 len 20].vault() with:
         gas gas_remaining wei
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (11 * ceil32(return_data.size)) + 1888] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 1892] = mem[172 len 20]
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 1924] = mem[288]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(mem[160]), mem[288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(this.address)
    call this.address.registry() with:
         gas gas_remaining wei
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (12 * ceil32(return_data.size)) + 1888] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ext_call.return_data[12 len 20])
    call ext_call.return_data[12 len 20].0x5769fc33 with:
         gas gas_remaining wei
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (13 * ceil32(return_data.size)) + 1888] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 1892] = mem[172 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xaa8dd7c8 with:
         gas gas_remaining wei
        args address(mem[160])
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (14 * ceil32(return_data.size)) + 1888] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if mem[416] - block.timestamp > mem[416]:
        revert with 0, 'ds-math-sub-underflow'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).accounting() with:
         gas gas_remaining wei
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (15 * ceil32(return_data.size)) + 1888] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ext_call.return_data[12 len 20])
    call ext_call.return_data[12 len 20].NATIVE_ASSET() with:
         gas gas_remaining wei
    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (16 * ceil32(return_data.size)) + 1888] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if mem[172 len 20] != ext_call.return_data[12 len 20]:
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (18 * ceil32(return_data.size)) + 1892] = address(ext_call.return_data[0])
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (18 * ceil32(return_data.size)) + 1924] = mem[288]
        require ext_code.size(mem[172 len 20])
        call mem[172 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), mem[288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 1892] = mem[288]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 1924] = (mem[416] - block.timestamp / 3600) + 1
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[288], (mem[416] - block.timestamp / 3600) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1924] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1516 len 20]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1956] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1548 len 20]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1988] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1580 len 20]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2020] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1612 len 20]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2052] = mem[288]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2084] = mem[320]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2116] = mem[352]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2148] = mem[384]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2180] = mem[416]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2212] = mem[448]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2244] = 384
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2308] = ('cd', 516).length
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2340 len ceil32(('cd', 516).length)] = call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]
        if ceil32(('cd', 516).length) > ('cd', 516).length:
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + ('cd', 516).length + 2340] = 0
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2276] = ceil32(('cd', 516).length) + 416
        mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2340] = ('cd', 548).length
        mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2372 len ceil32(('cd', 548).length)] = call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
        if ceil32(('cd', 548).length) > ('cd', 548).length:
            mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + ('cd', 548).length + 2372] = 0
        require ext_code.size(address(cd[4]))
        call address(cd[4]).getOrderInfo(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12) with:
             gas gas_remaining wei
            args 32, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1924 len 128], mem[288], mem[320], mem[352], mem[384], mem[416], mem[448], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, Mask(8 * ceil32(('cd', 516).length), -(8 * ceil32(('cd', 516).length)) + 256, call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]) << (8 * ceil32(('cd', 516).length)) - 256, ('cd', 548).length, call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1888 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require bool(ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 1984 <= test266151307())
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 1888] = ext_call.return_data[31 len 1]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 1920] = ext_call.return_data[32]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 1952] = ext_call.return_data[64]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 2116 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
        if ceil32(('cd', 580).length) > ('cd', 580).length:
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + ('cd', 580).length + 2116] = 0
        require ext_code.size(address(cd[4]))
        call address(cd[4]).preSign(bytes32 arg1, address arg2, bytes arg3) with:
             gas gas_remaining wei
            args ext_call.return_data[32], address(this.address), Array(len=('cd', 580).length, data=call.data[cd[580] + 36 len ('cd', 580).length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 1988] = ext_call.return_data[32]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 2020] = this.address
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 2052] = 96
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 2084] = ('cd', 580).length
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 2116 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
        if ceil32(('cd', 580).length) > ('cd', 580).length:
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + ('cd', 580).length + 2116] = 0
        require ext_code.size(address(cd[4]))
        call address(cd[4]).isValidSignature(bytes32 arg1, address arg2, bytes arg3) with:
             gas gas_remaining wei
            args ext_call.return_data[32], address(this.address), Array(len=('cd', 580).length, data=call.data[cd[580] + 36 len ('cd', 580).length])
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'INVALID_ORDER_SIGNATURE'
        require ext_code.size(this.address)
        call this.address.hub() with:
             gas gas_remaining wei
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (22 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(ext_call.return_data[12 len 20])
        call ext_call.return_data[12 len 20].accounting() with:
             gas gas_remaining wei
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).addAssetToOwnedAssets(address arg1) with:
             gas gas_remaining wei
            args address(mem[192])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 1984] = mem[172 len 20]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2016] = mem[204 len 20]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2048] = mem[288]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2080] = mem[320]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2112] = 0
        idx = 0
        s = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 1984
        t = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2244
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(this.address)
        call this.address.0x195a261f with:
             gas gas_remaining wei
            args address(cd[4]), ext_call.return_data[32], 0, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2244 len 64], mem[288], mem[320], 0 >> 512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(this.address)
        call this.address.0x81a0433d with:
             gas gas_remaining wei
            args address(cd[4]), address(mem[160]), ext_call.return_data[32], mem[416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2144] = 0xc3394ef700000000000000000000000000000000000000000000000000000000
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2148] = ext_call.return_data[32]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2180] = 64
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2212] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1516 len 20]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2244] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1548 len 20]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2276] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1580 len 20]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2308] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1612 len 20]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2340] = mem[288]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2372] = mem[320]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2404] = mem[352]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2436] = mem[384]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2468] = mem[416]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2500] = mem[448]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2532] = 384
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2596] = ('cd', 516).length
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2628 len ceil32(('cd', 516).length)] = call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]
        if ceil32(('cd', 516).length) <= ('cd', 516).length:
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2564] = ceil32(('cd', 516).length) + 416
            mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2628] = Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)]
            mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2660 len ceil32(Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)])] = mem[ceil32(('cd', 516).length) + 608 len ceil32(Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)])]
            if ceil32(Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)]) > Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)]:
                mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)] + 2660] = 0
            require ext_code.size(this.address)
            call this.address.0xc3394ef7 with:
                 gas gas_remaining wei
                args ext_call.return_data[32], 64, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2212 len 128], mem[288], mem[320], mem[352], mem[384], mem[416], mem[448], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2628 len ceil32(('cd', 516).length) + ceil32(Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)]) + 32]
        else:
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + ('cd', 516).length + 2628] = 0
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2564] = ceil32(('cd', 516).length) + 416
            mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2628] = Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)]
            mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2660 len ceil32(Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)])] = mem[ceil32(('cd', 516).length) + 608 len ceil32(Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)])]
            if ceil32(Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)]) <= Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)]:
                require ext_code.size(this.address)
                call this.address.0xc3394ef7 with:
                     gas gas_remaining wei
                    args ext_call.return_data[32], 64, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2212 len 128], mem[288], mem[320], mem[352], mem[384], mem[416], mem[448], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, Mask(8 * ('cd', 516).length, -(8 * ('cd', 516).length) + 256, call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]) << (8 * ('cd', 516).length) - 256, 0, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + ('cd', 516).length + 2660 len ceil32(('cd', 516).length) + ceil32(Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)]) - ('cd', 516).length]
            else:
                mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)] + 2660] = 0
                require ext_code.size(this.address)
                call this.address.0xc3394ef7 with:
                     gas gas_remaining wei
                    args ext_call.return_data[32], 64, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2212 len 128], mem[288], mem[320], mem[352], mem[384], mem[416], mem[448], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + 2628 len ('cd', 516).length], 0, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (24 * ceil32(return_data.size)) + ('cd', 516).length + 2660 len ceil32(('cd', 516).length) + ceil32(Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)]) - ('cd', 516).length]
    else:
        require ext_code.size(ext_call.return_data[12 len 20])
        call ext_call.return_data[12 len 20].withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args mem[288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (18 * ceil32(return_data.size)) + 1892] = mem[288]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (18 * ceil32(return_data.size)) + 1924] = (mem[416] - block.timestamp / 3600) + 1
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).deposit(uint256 arg1, uint256 arg2) with:
           value mem[288] wei
             gas gas_remaining wei
            args mem[288], (mem[416] - block.timestamp / 3600) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 1924] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1516 len 20]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 1956] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1548 len 20]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 1988] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1580 len 20]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 2020] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1612 len 20]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 2052] = mem[288]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 2084] = mem[320]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 2116] = mem[352]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 2148] = mem[384]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 2180] = mem[416]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 2212] = mem[448]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 2244] = 384
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 2308] = ('cd', 516).length
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 2340 len ceil32(('cd', 516).length)] = call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]
        if ceil32(('cd', 516).length) <= ('cd', 516).length:
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 2276] = ceil32(('cd', 516).length) + 416
            mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 2340] = ('cd', 548).length
            mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 2372 len ceil32(('cd', 548).length)] = call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
            if ceil32(('cd', 548).length) <= ('cd', 548).length:
                require ext_code.size(address(cd[4]))
                call address(cd[4]).getOrderInfo(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12) with:
                     gas gas_remaining wei
                    args 32, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 1924 len 128], mem[288], mem[320], mem[352], mem[384], mem[416], mem[448], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, Mask(8 * ceil32(('cd', 516).length), -(8 * ceil32(('cd', 516).length)) + 256, call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]) << (8 * ceil32(('cd', 516).length)) - 256, ('cd', 548).length, call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 1888 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require bool(ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1984 <= test266151307())
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1888] = ext_call.return_data[31 len 1]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1920] = ext_call.return_data[32]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1952] = ext_call.return_data[64]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2116 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                if ceil32(('cd', 580).length) <= ('cd', 580).length:
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).preSign(bytes32 arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[32], address(this.address), Array(len=('cd', 580).length, data=call.data[cd[580] + 36 len ('cd', 580).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1988] = ext_call.return_data[32]
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2020] = this.address
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2052] = 96
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2084] = ('cd', 580).length
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2116 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                    if ceil32(('cd', 580).length) > ('cd', 580).length:
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + ('cd', 580).length + 2116] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).isValidSignature(bytes32 arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[32], address(this.address), Array(len=('cd', 580).length, data=call.data[cd[580] + 36 len ('cd', 580).length])
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'INVALID_ORDER_SIGNATURE'
                    require ext_code.size(this.address)
                    call this.address.hub() with:
                         gas gas_remaining wei
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(ext_call.return_data[12 len 20])
                    call ext_call.return_data[12 len 20].accounting() with:
                         gas gas_remaining wei
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (22 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).addAssetToOwnedAssets(address arg1) with:
                         gas gas_remaining wei
                        args address(mem[192])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984] = mem[172 len 20]
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2016] = mem[204 len 20]
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2048] = mem[288]
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2080] = mem[320]
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2112] = 0
                    idx = 0
                    s = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984
                    t = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2244
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + ('cd', 580).length + 2116] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).preSign(bytes32 arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[32], address(this.address), Array(len=('cd', 580).length, data=call.data[cd[580] + 36 len ('cd', 580).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1988] = ext_call.return_data[32]
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2020] = this.address
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2052] = 96
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2084] = ('cd', 580).length
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2116 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                    if ceil32(('cd', 580).length) <= ('cd', 580).length:
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).isValidSignature(bytes32 arg1, address arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], address(this.address), Array(len=('cd', 580).length, data=call.data[cd[580] + 36 len ('cd', 580).length])
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'INVALID_ORDER_SIGNATURE'
                        require ext_code.size(this.address)
                        call this.address.hub() with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(ext_call.return_data[12 len 20])
                        call ext_call.return_data[12 len 20].accounting() with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (22 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).addAssetToOwnedAssets(address arg1) with:
                             gas gas_remaining wei
                            args address(mem[192])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984] = mem[172 len 20]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2016] = mem[204 len 20]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2048] = mem[288]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2080] = mem[320]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2112] = 0
                        idx = 0
                        s = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984
                        t = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2244
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + ('cd', 580).length + 2116] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).isValidSignature(bytes32 arg1, address arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], address(this.address), Array(len=('cd', 580).length, data=call.data[cd[580] + 36 len ('cd', 580).length])
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'INVALID_ORDER_SIGNATURE'
                        require ext_code.size(this.address)
                        call this.address.hub() with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(ext_call.return_data[12 len 20])
                        call ext_call.return_data[12 len 20].accounting() with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (22 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).addAssetToOwnedAssets(address arg1) with:
                             gas gas_remaining wei
                            args address(mem[192])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984] = mem[172 len 20]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2016] = mem[204 len 20]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2048] = mem[288]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2080] = mem[320]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2112] = 0
                        idx = 0
                        s = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984
                        t = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2244
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        var541001 = 3
                        var541002 = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2144
                        var541005 = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2404
            else:
                mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + ('cd', 548).length + 2372] = 0
                require ext_code.size(address(cd[4]))
                call address(cd[4]).getOrderInfo(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12) with:
                     gas gas_remaining wei
                    args 32, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 1924 len 128], mem[288], mem[320], mem[352], mem[384], mem[416], mem[448], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, Mask(8 * ceil32(('cd', 516).length), -(8 * ceil32(('cd', 516).length)) + 256, call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]) << (8 * ceil32(('cd', 516).length)) - 256, ('cd', 548).length, call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 1888 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require bool(ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1984 <= test266151307())
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1888] = ext_call.return_data[31 len 1]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1920] = ext_call.return_data[32]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1952] = ext_call.return_data[64]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2116 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                if ceil32(('cd', 580).length) <= ('cd', 580).length:
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).preSign(bytes32 arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[32], address(this.address), Array(len=('cd', 580).length, data=call.data[cd[580] + 36 len ('cd', 580).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1988] = ext_call.return_data[32]
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2020] = this.address
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2052] = 96
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2084] = ('cd', 580).length
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2116 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                    if ceil32(('cd', 580).length) <= ('cd', 580).length:
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).isValidSignature(bytes32 arg1, address arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], address(this.address), Array(len=('cd', 580).length, data=call.data[cd[580] + 36 len ('cd', 580).length])
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'INVALID_ORDER_SIGNATURE'
                        require ext_code.size(this.address)
                        call this.address.hub() with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(ext_call.return_data[12 len 20])
                        call ext_call.return_data[12 len 20].accounting() with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (22 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).addAssetToOwnedAssets(address arg1) with:
                             gas gas_remaining wei
                            args address(mem[192])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984] = mem[172 len 20]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2016] = mem[204 len 20]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2048] = mem[288]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2080] = mem[320]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2112] = 0
                        idx = 0
                        s = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984
                        t = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2244
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + ('cd', 580).length + 2116] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).isValidSignature(bytes32 arg1, address arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], address(this.address), Array(len=('cd', 580).length, data=call.data[cd[580] + 36 len ('cd', 580).length])
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'INVALID_ORDER_SIGNATURE'
                        require ext_code.size(this.address)
                        call this.address.hub() with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(ext_call.return_data[12 len 20])
                        call ext_call.return_data[12 len 20].accounting() with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (22 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).addAssetToOwnedAssets(address arg1) with:
                             gas gas_remaining wei
                            args address(mem[192])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984] = mem[172 len 20]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2016] = mem[204 len 20]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2048] = mem[288]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2080] = mem[320]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2112] = 0
                        idx = 0
                        s = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984
                        t = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2244
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        var541001 = 3
                        var541002 = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2144
                        var541005 = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2404
                else:
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + ('cd', 580).length + 2116] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).preSign(bytes32 arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[32], address(this.address), Array(len=('cd', 580).length, data=call.data[cd[580] + 36 len ('cd', 580).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1988] = ext_call.return_data[32]
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2020] = this.address
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2052] = 96
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2084] = ('cd', 580).length
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2116 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                    if ceil32(('cd', 580).length) <= ('cd', 580).length:
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).isValidSignature(bytes32 arg1, address arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], address(this.address), Array(len=('cd', 580).length, data=call.data[cd[580] + 36 len ('cd', 580).length])
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'INVALID_ORDER_SIGNATURE'
                        require ext_code.size(this.address)
                        call this.address.hub() with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(ext_call.return_data[12 len 20])
                        call ext_call.return_data[12 len 20].accounting() with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (22 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).addAssetToOwnedAssets(address arg1) with:
                             gas gas_remaining wei
                            args address(mem[192])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984] = mem[172 len 20]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2016] = mem[204 len 20]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2048] = mem[288]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2080] = mem[320]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2112] = 0
                        idx = 0
                        s = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984
                        t = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2244
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        var541001 = 3
                        var541002 = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2144
                        var541005 = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2404
                    else:
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + ('cd', 580).length + 2116] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).isValidSignature(bytes32 arg1, address arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], address(this.address), Array(len=('cd', 580).length, data=call.data[cd[580] + 36 len ('cd', 580).length])
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'INVALID_ORDER_SIGNATURE'
                        require ext_code.size(this.address)
                        call this.address.hub() with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(ext_call.return_data[12 len 20])
                        call ext_call.return_data[12 len 20].accounting() with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (22 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).addAssetToOwnedAssets(address arg1) with:
                             gas gas_remaining wei
                            args address(mem[192])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984] = mem[172 len 20]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2016] = mem[204 len 20]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2048] = mem[288]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2080] = mem[320]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2112] = 0
                        idx = 0
                        s = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984
                        t = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2244
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        var542001 = 3
                        var542002 = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2144
                        var542005 = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2404
        else:
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + ('cd', 516).length + 2340] = 0
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 2276] = ceil32(('cd', 516).length) + 416
            mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 2340] = ('cd', 548).length
            mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 2372 len ceil32(('cd', 548).length)] = call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
            if ceil32(('cd', 548).length) <= ('cd', 548).length:
                require ext_code.size(address(cd[4]))
                call address(cd[4]).getOrderInfo(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12) with:
                     gas gas_remaining wei
                    args 32, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 1924 len 128], mem[288], mem[320], mem[352], mem[384], mem[416], mem[448], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, Mask(8 * ceil32(('cd', 516).length), -(8 * ceil32(('cd', 516).length)) + 256, call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]) << (8 * ceil32(('cd', 516).length)) - 256, ('cd', 548).length, call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 1888 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require bool(ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1984 <= test266151307())
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1888] = ext_call.return_data[31 len 1]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1920] = ext_call.return_data[32]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1952] = ext_call.return_data[64]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2116 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                if ceil32(('cd', 580).length) <= ('cd', 580).length:
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).preSign(bytes32 arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[32], address(this.address), Array(len=('cd', 580).length, data=call.data[cd[580] + 36 len ('cd', 580).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1988] = ext_call.return_data[32]
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2020] = this.address
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2052] = 96
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2084] = ('cd', 580).length
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2116 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                    if ceil32(('cd', 580).length) <= ('cd', 580).length:
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).isValidSignature(bytes32 arg1, address arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], address(this.address), Array(len=('cd', 580).length, data=call.data[cd[580] + 36 len ('cd', 580).length])
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'INVALID_ORDER_SIGNATURE'
                        require ext_code.size(this.address)
                        call this.address.hub() with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(ext_call.return_data[12 len 20])
                        call ext_call.return_data[12 len 20].accounting() with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (22 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).addAssetToOwnedAssets(address arg1) with:
                             gas gas_remaining wei
                            args address(mem[192])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984] = mem[172 len 20]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2016] = mem[204 len 20]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2048] = mem[288]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2080] = mem[320]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2112] = 0
                        idx = 0
                        s = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984
                        t = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2244
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + ('cd', 580).length + 2116] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).isValidSignature(bytes32 arg1, address arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], address(this.address), Array(len=('cd', 580).length, data=call.data[cd[580] + 36 len ('cd', 580).length])
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'INVALID_ORDER_SIGNATURE'
                        require ext_code.size(this.address)
                        call this.address.hub() with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(ext_call.return_data[12 len 20])
                        call ext_call.return_data[12 len 20].accounting() with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (22 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).addAssetToOwnedAssets(address arg1) with:
                             gas gas_remaining wei
                            args address(mem[192])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984] = mem[172 len 20]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2016] = mem[204 len 20]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2048] = mem[288]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2080] = mem[320]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2112] = 0
                        idx = 0
                        s = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984
                        t = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2244
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        var541001 = 3
                        var541002 = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2144
                        var541005 = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2404
                else:
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + ('cd', 580).length + 2116] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).preSign(bytes32 arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[32], address(this.address), Array(len=('cd', 580).length, data=call.data[cd[580] + 36 len ('cd', 580).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1988] = ext_call.return_data[32]
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2020] = this.address
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2052] = 96
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2084] = ('cd', 580).length
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2116 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                    if ceil32(('cd', 580).length) <= ('cd', 580).length:
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).isValidSignature(bytes32 arg1, address arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], address(this.address), Array(len=('cd', 580).length, data=call.data[cd[580] + 36 len ('cd', 580).length])
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'INVALID_ORDER_SIGNATURE'
                        require ext_code.size(this.address)
                        call this.address.hub() with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(ext_call.return_data[12 len 20])
                        call ext_call.return_data[12 len 20].accounting() with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (22 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).addAssetToOwnedAssets(address arg1) with:
                             gas gas_remaining wei
                            args address(mem[192])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984] = mem[172 len 20]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2016] = mem[204 len 20]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2048] = mem[288]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2080] = mem[320]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2112] = 0
                        idx = 0
                        s = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984
                        t = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2244
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        var541001 = 3
                        var541002 = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2144
                        var541005 = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2404
                    else:
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + ('cd', 580).length + 2116] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).isValidSignature(bytes32 arg1, address arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], address(this.address), Array(len=('cd', 580).length, data=call.data[cd[580] + 36 len ('cd', 580).length])
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'INVALID_ORDER_SIGNATURE'
                        require ext_code.size(this.address)
                        call this.address.hub() with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(ext_call.return_data[12 len 20])
                        call ext_call.return_data[12 len 20].accounting() with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (22 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).addAssetToOwnedAssets(address arg1) with:
                             gas gas_remaining wei
                            args address(mem[192])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984] = mem[172 len 20]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2016] = mem[204 len 20]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2048] = mem[288]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2080] = mem[320]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2112] = 0
                        idx = 0
                        s = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984
                        t = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2244
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        var542001 = 3
                        var542002 = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2144
                        var542005 = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2404
            else:
                mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + ('cd', 548).length + 2372] = 0
                require ext_code.size(address(cd[4]))
                call address(cd[4]).getOrderInfo(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12) with:
                     gas gas_remaining wei
                    args 32, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 1924 len 128], mem[288], mem[320], mem[352], mem[384], mem[416], mem[448], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, Mask(8 * ceil32(('cd', 516).length), -(8 * ceil32(('cd', 516).length)) + 256, call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]) << (8 * ceil32(('cd', 516).length)) - 256, ('cd', 548).length, call.data[cd[548] + 36 len ('cd', 548).length], mem[ceil32(('cd', 516).length) + ('cd', 548).length + 608 len ceil32(('cd', 548).length) - ('cd', 548).length]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (19 * ceil32(return_data.size)) + 1888 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require bool(ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1984 <= test266151307())
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1888] = ext_call.return_data[31 len 1]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1920] = ext_call.return_data[32]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1952] = ext_call.return_data[64]
                mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2116 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                if ceil32(('cd', 580).length) <= ('cd', 580).length:
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).preSign(bytes32 arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[32], address(this.address), Array(len=('cd', 580).length, data=call.data[cd[580] + 36 len ('cd', 580).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1988] = ext_call.return_data[32]
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2020] = this.address
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2052] = 96
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2084] = ('cd', 580).length
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2116 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                    if ceil32(('cd', 580).length) <= ('cd', 580).length:
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).isValidSignature(bytes32 arg1, address arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], address(this.address), Array(len=('cd', 580).length, data=call.data[cd[580] + 36 len ('cd', 580).length])
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'INVALID_ORDER_SIGNATURE'
                        require ext_code.size(this.address)
                        call this.address.hub() with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(ext_call.return_data[12 len 20])
                        call ext_call.return_data[12 len 20].accounting() with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (22 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).addAssetToOwnedAssets(address arg1) with:
                             gas gas_remaining wei
                            args address(mem[192])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984] = mem[172 len 20]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2016] = mem[204 len 20]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2048] = mem[288]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2080] = mem[320]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2112] = 0
                        idx = 0
                        s = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984
                        t = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2244
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        var541001 = 3
                        var541002 = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2144
                        var541005 = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2404
                    else:
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + ('cd', 580).length + 2116] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).isValidSignature(bytes32 arg1, address arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], address(this.address), Array(len=('cd', 580).length, data=call.data[cd[580] + 36 len ('cd', 580).length])
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'INVALID_ORDER_SIGNATURE'
                        require ext_code.size(this.address)
                        call this.address.hub() with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(ext_call.return_data[12 len 20])
                        call ext_call.return_data[12 len 20].accounting() with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (22 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).addAssetToOwnedAssets(address arg1) with:
                             gas gas_remaining wei
                            args address(mem[192])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984] = mem[172 len 20]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2016] = mem[204 len 20]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2048] = mem[288]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2080] = mem[320]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2112] = 0
                        idx = 0
                        s = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984
                        t = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2244
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        var542001 = 3
                        var542002 = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2144
                        var542005 = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2404
                else:
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + ('cd', 580).length + 2116] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).preSign(bytes32 arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[32], address(this.address), Array(len=('cd', 580).length, data=call.data[cd[580] + 36 len ('cd', 580).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1988] = ext_call.return_data[32]
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2020] = this.address
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2052] = 96
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2084] = ('cd', 580).length
                    mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 2116 len ceil32(('cd', 580).length)] = call.data[cd[580] + 36 len ('cd', 580).length], mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ('cd', 580).length + 640 len ceil32(('cd', 580).length) - ('cd', 580).length]
                    if ceil32(('cd', 580).length) <= ('cd', 580).length:
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).isValidSignature(bytes32 arg1, address arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], address(this.address), Array(len=('cd', 580).length, data=call.data[cd[580] + 36 len ('cd', 580).length])
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'INVALID_ORDER_SIGNATURE'
                        require ext_code.size(this.address)
                        call this.address.hub() with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(ext_call.return_data[12 len 20])
                        call ext_call.return_data[12 len 20].accounting() with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (22 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).addAssetToOwnedAssets(address arg1) with:
                             gas gas_remaining wei
                            args address(mem[192])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984] = mem[172 len 20]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2016] = mem[204 len 20]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2048] = mem[288]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2080] = mem[320]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2112] = 0
                        idx = 0
                        s = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984
                        t = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2244
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        var542001 = 3
                        var542002 = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2144
                        var542005 = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2404
                    else:
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + ('cd', 580).length + 2116] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).isValidSignature(bytes32 arg1, address arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], address(this.address), Array(len=('cd', 580).length, data=call.data[cd[580] + 36 len ('cd', 580).length])
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (20 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'INVALID_ORDER_SIGNATURE'
                        require ext_code.size(this.address)
                        call this.address.hub() with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (21 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(ext_call.return_data[12 len 20])
                        call ext_call.return_data[12 len 20].accounting() with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (22 * ceil32(return_data.size)) + 1984] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).addAssetToOwnedAssets(address arg1) with:
                             gas gas_remaining wei
                            args address(mem[192])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984] = mem[172 len 20]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2016] = mem[204 len 20]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2048] = mem[288]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2080] = mem[320]
                        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2112] = 0
                        idx = 0
                        s = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 1984
                        t = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2244
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        var543001 = 3
                        var543002 = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2144
                        var543005 = ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2404
        require ext_code.size(this.address)
        call this.address.0x195a261f with:
             gas gas_remaining wei
            args address(cd[4]), ext_call.return_data[32], 0, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2244 len 64], mem[288], mem[320], 0 >> 512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(this.address)
        call this.address.0x81a0433d with:
             gas gas_remaining wei
            args address(cd[4]), address(mem[160]), ext_call.return_data[32], mem[416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2144] = 0xc3394ef700000000000000000000000000000000000000000000000000000000
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2148] = ext_call.return_data[32]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2180] = 64
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2212] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1516 len 20]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2244] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1548 len 20]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2276] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1580 len 20]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2308] = mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (7 * ceil32(return_data.size)) + 1612 len 20]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2340] = mem[288]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2372] = mem[320]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2404] = mem[352]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2436] = mem[384]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2468] = mem[416]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2500] = mem[448]
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2532] = 384
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2596] = ('cd', 516).length
        mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2628 len ceil32(('cd', 516).length)] = call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]
        if ceil32(('cd', 516).length) <= ('cd', 516).length:
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2564] = ceil32(('cd', 516).length) + 416
            mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2628] = Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)]
            mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2660 len ceil32(Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)])] = mem[ceil32(('cd', 516).length) + 608 len ceil32(Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)])]
            if ceil32(Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)]) > Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)]:
                mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)] + 2660] = 0
            require ext_code.size(this.address)
            call this.address.0xc3394ef7 with:
                 gas gas_remaining wei
                args ext_call.return_data[32], 64, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2212 len 128], mem[288], mem[320], mem[352], mem[384], mem[416], mem[448], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2628 len ceil32(('cd', 516).length) + ceil32(Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)]) + 32]
        else:
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + ('cd', 516).length + 2628] = 0
            mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2564] = ceil32(('cd', 516).length) + 416
            mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2628] = Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)]
            mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2660 len ceil32(Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)])] = mem[ceil32(('cd', 516).length) + 608 len ceil32(Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)])]
            if ceil32(Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)]) <= Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)]:
                require ext_code.size(this.address)
                call this.address.0xc3394ef7 with:
                     gas gas_remaining wei
                    args ext_call.return_data[32], 64, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2212 len 128], mem[288], mem[320], mem[352], mem[384], mem[416], mem[448], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, Mask(8 * ('cd', 516).length, -(8 * ('cd', 516).length) + 256, call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 576 len ceil32(('cd', 516).length) - ('cd', 516).length]) << (8 * ('cd', 516).length) - 256, 0, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + ('cd', 516).length + 2660 len ceil32(('cd', 516).length) + ceil32(Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)]) - ('cd', 516).length]
            else:
                mem[(2 * ceil32(('cd', 516).length)) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)] + 2660] = 0
                require ext_code.size(this.address)
                call this.address.0xc3394ef7 with:
                     gas gas_remaining wei
                    args ext_call.return_data[32], 64, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2212 len 128], mem[288], mem[320], mem[352], mem[384], mem[416], mem[448], 384, ceil32(('cd', 516).length) + 416, ('cd', 516).length, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + 2628 len ('cd', 516).length], 0, mem[ceil32(('cd', 516).length) + ceil32(('cd', 548).length) + ceil32(('cd', 580).length) + (23 * ceil32(return_data.size)) + ('cd', 516).length + 2660 len ceil32(('cd', 516).length) + ceil32(Mask(8 * -ceil32(('cd', 516).length) + ('cd', 516).length + 32, 0, 0), mem[('cd', 516).length + 608 len -('cd', 516).length + ceil32(('cd', 516).length)]) - ('cd', 516).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
