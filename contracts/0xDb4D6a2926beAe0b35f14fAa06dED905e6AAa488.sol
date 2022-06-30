contract main {




// =====================  Runtime code  =====================


#
#  - sub_9e4157fd(?)
#
address owner;
address sub_3ec7a073Address;
address sub_560addeaAddress;
address uniswapAddress;
address sub_4fb07214Address;

function sub_3ec7a073(?) {
    require msg.sender == owner
    return sub_3ec7a073Address
}

function sub_4fb07214(?) {
    require msg.sender == owner
    return sub_4fb07214Address
}

function sub_560addea(?) {
    require msg.sender == owner
    return sub_560addeaAddress
}

function owner() {
    return owner
}

function getUniswapAddress() {
    require msg.sender == owner
    return uniswapAddress
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_06963873(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_4fb07214Address = arg1
}

function sub_397c218f(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_560addeaAddress = arg1
}

function sub_81bd9a07(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_3ec7a073Address = arg1
}

function updateUniswapAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    uniswapAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_07d47d97(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    mem[64] = ceil32(arg1.length) + 128
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        call mem[idx + 128 len 20].mem[idx + 212 len 4] with:
           value mem[idx + 148] wei
             gas gas_remaining - 5000 wei
            args mem[idx + 216 len mem[idx + 180] - 4]
        require ext_call.success
        idx = idx + mem[idx + 180] + 84
        continue 
}

function sub_f026fe86(?) {
    require calldata.size - 4 >= 192
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 128 >= 96 and (32 * ('cd', 68).length) + 128 <= test266151307()
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        mem[t] = uint8(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require (32 * ('cd', 100).length) + 160 >= 128 and (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 <= test266151307()
    mem[(32 * ('cd', 68).length) + 128] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = (32 * ('cd', 68).length) + 160
    while idx < ('cd', 100).length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require (32 * ('cd', 132).length) + 192 >= 160 and (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192 <= test266151307()
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192
    while idx < ('cd', 132).length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require (32 * ('cd', 164).length) + 224 >= 192 and (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 224 <= test266151307()
    mem[64] = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 224
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192] = ('cd', 164).length
    idx = 0
    s = cd[164] + 36
    t = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224
    while idx < ('cd', 164).length:
        require cd[164] + cd[s] + 67 < calldata.size
        require cd[(cd[164] + cd[s] + 36)] <= test266151307()
        _3848 = mem[64]
        require mem[64] + ceil32(cd[(cd[164] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[164] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[164] + cd[s] + 36)]) + 32
        mem[_3848] = cd[(cd[164] + cd[s] + 36)]
        require cd[164] + cd[s] + cd[(cd[164] + cd[s] + 36)] + 68 <= calldata.size
        mem[_3848 + 32 len cd[(cd[164] + cd[s] + 36)]] = call.data[cd[164] + cd[s] + 68 len cd[(cd[164] + cd[s] + 36)]]
        mem[cd[(cd[164] + cd[s] + 36)] + _3848 + 32] = 0
        mem[t] = _3848
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require msg.sender == owner
    _3846 = mem[96]
    _3847 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _3846) + 32
    if not _3846:
        idx = 0
        while uint8(idx) < _3846:
            require uint8(idx) < mem[96]
            if not mem[(32 * uint8(idx)) + 159 len 1]:
                require uint8(idx) < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192]
                _4936 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224]
                _4947 = mem[64]
                mem[64] = mem[64] + 1184
                mem[_4947] = 0
                mem[_4947 + 32] = 0
                mem[_4947 + 64] = 0
                mem[_4947 + 96] = 0
                mem[_4947 + 128] = 0
                mem[_4947 + 160] = 0
                mem[_4947 + 192] = 0
                _4954 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4954] = 0
                mem[_4954 + 32] = 0
                mem[_4947 + 224] = _4954
                _4971 = mem[64]
                mem[64] = mem[64] + 448
                mem[_4971] = 0
                _4980 = mem[64]
                mem[64] = mem[64] + 384
                mem[_4980] = 0
                mem[_4980 + 32] = 0
                mem[_4980 + 64] = 0
                mem[_4980 + 96] = 0
                mem[_4980 + 128] = 0
                mem[_4980 + 160] = 0
                mem[_4980 + 192] = 0
                mem[_4980 + 224] = 0
                mem[_4980 + 256] = 0
                mem[_4980 + 288] = 0
                mem[_4980 + 320] = 96
                mem[_4980 + 352] = 96
                mem[_4971 + 32] = _4980
                mem[_4971 + 64] = 96
                mem[_4947 + 256] = _4971
                _5009 = mem[64]
                mem[64] = mem[64] + 192
                mem[_5009] = 0
                mem[_5009 + 32] = 0
                mem[_5009 + 64] = 0
                mem[_5009 + 96] = 0
                mem[_5009 + 128] = 0
                mem[_5009 + 160] = 0
                mem[_4947 + 288] = _5009
                _5027 = mem[64]
                mem[64] = mem[64] + 128
                mem[_5027] = 0
                mem[_5027 + 32] = 0
                mem[_5027 + 64] = 0
                mem[_5027 + 96] = 0
                mem[_4947 + 320] = _5027
                _5047 = mem[64]
                mem[64] = mem[64] + 128
                mem[_5047] = 0
                mem[_5047 + 32] = 0
                mem[_5047 + 64] = 0
                mem[_5047 + 96] = 0
                mem[_4947 + 352] = _5047
                _5087 = mem[_4936 + 32]
                require ext_code.size(sub_3ec7a073Address)
                staticcall sub_3ec7a073Address.offers(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[_4936 + 32]
                mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5249 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 192
                _5289 = mem[_5249]
                _5492 = mem[_5249 + 64]
                _5593 = mem[64]
                mem[64] = mem[64] + 1184
                mem[_5593] = 0
                mem[_5593 + 32] = 0
                mem[_5593 + 64] = 0
                mem[_5593 + 96] = 0
                mem[_5593 + 128] = 0
                mem[_5593 + 160] = 0
                mem[_5593 + 192] = 0
                _5599 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5599] = 0
                mem[_5599 + 32] = 0
                mem[_5593 + 224] = _5599
                _5607 = mem[64]
                mem[64] = mem[64] + 448
                mem[_5607] = 0
                _5610 = mem[64]
                mem[64] = mem[64] + 384
                mem[_5610] = 0
                mem[_5610 + 32] = 0
                mem[_5610 + 64] = 0
                mem[_5610 + 96] = 0
                mem[_5610 + 128] = 0
                mem[_5610 + 160] = 0
                mem[_5610 + 192] = 0
                mem[_5610 + 224] = 0
                mem[_5610 + 256] = 0
                mem[_5610 + 288] = 0
                mem[_5610 + 320] = 96
                mem[_5610 + 352] = 96
                mem[_5607 + 32] = _5610
                mem[_5607 + 64] = 96
                mem[_5593 + 256] = _5607
                _5622 = mem[64]
                mem[64] = mem[64] + 192
                mem[_5622] = 0
                mem[_5622 + 32] = 0
                mem[_5622 + 64] = 0
                mem[_5622 + 96] = 0
                mem[_5622 + 128] = 0
                mem[_5622 + 160] = 0
                mem[_5593 + 288] = _5622
                _5628 = mem[64]
                mem[64] = mem[64] + 128
                mem[_5628] = 0
                mem[_5628 + 32] = 0
                mem[_5628 + 64] = 0
                mem[_5628 + 96] = 0
                mem[_5593 + 320] = _5628
                _5639 = mem[64]
                mem[64] = mem[64] + 128
                mem[_5639] = 0
                mem[_5639 + 32] = 0
                mem[_5639 + 64] = 0
                mem[_5639 + 96] = 0
                mem[_5593 + 352] = _5639
                if _5492 < 100:
                    require uint8(idx) < mem[_3847]
                mem[_5593] = 0
                mem[_5593 + 160] = _5492
                if not _5289:
                    require _5492 > 0
                    require _5492
                    mem[_5593 + 192] = 0 / _5492
                    _5671 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5671] = sub_3ec7a073Address
                    mem[_5671 + 32] = _5087
                    mem[_5593 + 224] = _5671
                else:
                    require 1000000000 * 10^18 * _5289 / _5289 == 1000000000 * 10^18
                    require _5492 > 0
                    require _5492
                    mem[_5593 + 192] = 1000000000 * 10^18 * _5289 / _5492
                    _5679 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5679] = sub_3ec7a073Address
                    mem[_5679 + 32] = _5087
                    mem[_5593 + 224] = _5679
                require uint8(idx) < mem[_3847]
                mem[(32 * uint8(idx)) + _3847 + 32] = _5593
            else:
                require uint8(idx) < mem[96]
                if mem[(32 * uint8(idx)) + 159 len 1] != 1:
                    require uint8(idx) < mem[96]
                    if mem[(32 * uint8(idx)) + 159 len 1] != 2:
                        require uint8(idx) < mem[96]
                        if mem[(32 * uint8(idx)) + 159 len 1] != 3:
                            require uint8(idx) < mem[96]
                            if mem[(32 * uint8(idx)) + 159 len 1] == 4:
                                require uint8(idx) < mem[(32 * ('cd', 68).length) + 128]
                                _4994 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + 160]
                                require uint8(idx) < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                                _5007 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                                _5024 = mem[64]
                                mem[64] = mem[64] + 1184
                                mem[_5024] = 0
                                mem[_5024 + 32] = 0
                                mem[_5024 + 64] = 0
                                mem[_5024 + 96] = 0
                                mem[_5024 + 128] = 0
                                mem[_5024 + 160] = 0
                                mem[_5024 + 192] = 0
                                _5037 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5037] = 0
                                mem[_5037 + 32] = 0
                                mem[_5024 + 224] = _5037
                                _5057 = mem[64]
                                mem[64] = mem[64] + 448
                                mem[_5057] = 0
                                _5071 = mem[64]
                                mem[64] = mem[64] + 384
                                mem[_5071] = 0
                                mem[_5071 + 32] = 0
                                mem[_5071 + 64] = 0
                                mem[_5071 + 96] = 0
                                mem[_5071 + 128] = 0
                                mem[_5071 + 160] = 0
                                mem[_5071 + 192] = 0
                                mem[_5071 + 224] = 0
                                mem[_5071 + 256] = 0
                                mem[_5071 + 288] = 0
                                mem[_5071 + 320] = 96
                                mem[_5071 + 352] = 96
                                mem[_5057 + 32] = _5071
                                mem[_5057 + 64] = 96
                                mem[_5024 + 256] = _5057
                                _5121 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_5121] = 0
                                mem[_5121 + 32] = 0
                                mem[_5121 + 64] = 0
                                mem[_5121 + 96] = 0
                                mem[_5121 + 128] = 0
                                mem[_5121 + 160] = 0
                                mem[_5024 + 288] = _5121
                                _5150 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_5150] = 0
                                mem[_5150 + 32] = 0
                                mem[_5150 + 64] = 0
                                mem[_5150 + 96] = 0
                                mem[_5024 + 320] = _5150
                                _5191 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_5191] = 0
                                mem[_5191 + 32] = 0
                                mem[_5191 + 64] = 0
                                mem[_5191 + 96] = 0
                                mem[_5024 + 352] = _5191
                                _5248 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_5248 + 32] = 0
                                mem[_5248 + 64] = 0
                                mem[_5248 + 96] = 0
                                mem[_5248] = address(_4994)
                                mem[mem[64] + 4] = address(_5007)
                                require ext_code.size(uniswapAddress)
                                staticcall uniswapAddress.getExchange(address arg1) with:
                                        gas gas_remaining wei
                                       args address(_5007)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5402 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5438 = mem[_5402]
                                mem[_5248 + 32] = mem[_5402 + 12 len 20]
                                mem[_5248 + 64] = eth.balance(_5438)
                                mem[mem[64] + 4] = address(_5438)
                                require ext_code.size(address(_5007))
                                staticcall address(_5007).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_5438)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5547 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[_5248 + 96] = mem[_5547]
                                _5583 = mem[64]
                                mem[64] = mem[64] + 1184
                                mem[_5583] = 0
                                mem[_5583 + 32] = 0
                                mem[_5583 + 64] = 0
                                mem[_5583 + 96] = 0
                                mem[_5583 + 128] = 0
                                mem[_5583 + 160] = 0
                                mem[_5583 + 192] = 0
                                _5585 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5585] = 0
                                mem[_5585 + 32] = 0
                                mem[_5583 + 224] = _5585
                                _5590 = mem[64]
                                mem[64] = mem[64] + 448
                                mem[_5590] = 0
                                _5591 = mem[64]
                                mem[64] = mem[64] + 384
                                mem[_5591] = 0
                                mem[_5591 + 32] = 0
                                mem[_5591 + 64] = 0
                                mem[_5591 + 96] = 0
                                mem[_5591 + 128] = 0
                                mem[_5591 + 160] = 0
                                mem[_5591 + 192] = 0
                                mem[_5591 + 224] = 0
                                mem[_5591 + 256] = 0
                                mem[_5591 + 288] = 0
                                mem[_5591 + 320] = 96
                                mem[_5591 + 352] = 96
                                mem[_5590 + 32] = _5591
                                mem[_5590 + 64] = 96
                                mem[_5583 + 256] = _5590
                                _5604 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_5604] = 0
                                mem[_5604 + 32] = 0
                                mem[_5604 + 64] = 0
                                mem[_5604 + 96] = 0
                                mem[_5604 + 128] = 0
                                mem[_5604 + 160] = 0
                                mem[_5583 + 288] = _5604
                                _5613 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_5613] = 0
                                mem[_5613 + 32] = 0
                                mem[_5613 + 64] = 0
                                mem[_5613 + 96] = 0
                                mem[_5583 + 320] = _5613
                                _5621 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_5621] = 0
                                mem[_5621 + 32] = 0
                                mem[_5621 + 64] = 0
                                mem[_5621 + 96] = 0
                                mem[_5583] = 4
                                mem[_5583 + 160] = 0x100000000000000000000000000000000
                                mem[_5583 + 352] = _5248
                                require uint8(idx) < mem[_3847]
                                mem[(32 * uint8(idx)) + _3847 + 32] = _5583
                        else:
                            require uint8(idx) < mem[(32 * ('cd', 68).length) + 128]
                            _4978 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + 160]
                            require uint8(idx) < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                            _4986 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                            _5008 = mem[64]
                            mem[64] = mem[64] + 1184
                            mem[_5008] = 0
                            mem[_5008 + 32] = 0
                            mem[_5008 + 64] = 0
                            mem[_5008 + 96] = 0
                            mem[_5008 + 128] = 0
                            mem[_5008 + 160] = 0
                            mem[_5008 + 192] = 0
                            _5015 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5015] = 0
                            mem[_5015 + 32] = 0
                            mem[_5008 + 224] = _5015
                            _5038 = mem[64]
                            mem[64] = mem[64] + 448
                            mem[_5038] = 0
                            _5045 = mem[64]
                            mem[64] = mem[64] + 384
                            mem[_5045] = 0
                            mem[_5045 + 32] = 0
                            mem[_5045 + 64] = 0
                            mem[_5045 + 96] = 0
                            mem[_5045 + 128] = 0
                            mem[_5045 + 160] = 0
                            mem[_5045 + 192] = 0
                            mem[_5045 + 224] = 0
                            mem[_5045 + 256] = 0
                            mem[_5045 + 288] = 0
                            mem[_5045 + 320] = 96
                            mem[_5045 + 352] = 96
                            mem[_5038 + 32] = _5045
                            mem[_5038 + 64] = 96
                            mem[_5008 + 256] = _5038
                            _5085 = mem[64]
                            mem[64] = mem[64] + 192
                            mem[_5085] = 0
                            mem[_5085 + 32] = 0
                            mem[_5085 + 64] = 0
                            mem[_5085 + 96] = 0
                            mem[_5085 + 128] = 0
                            mem[_5085 + 160] = 0
                            mem[_5008 + 288] = _5085
                            _5122 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_5122] = 0
                            mem[_5122 + 32] = 0
                            mem[_5122 + 64] = 0
                            mem[_5122 + 96] = 0
                            mem[_5008 + 320] = _5122
                            _5151 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_5151] = 0
                            mem[_5151 + 32] = 0
                            mem[_5151 + 64] = 0
                            mem[_5151 + 96] = 0
                            mem[_5008 + 352] = _5151
                            _5205 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_5205] = 0
                            mem[_5205 + 32] = 0
                            mem[_5205 + 64] = 0
                            mem[_5205 + 96] = 0
                            mem[mem[64] + 4] = address(_4978)
                            require ext_code.size(uniswapAddress)
                            staticcall uniswapAddress.getExchange(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_4978)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5372 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5414 = mem[_5372]
                            mem[_5205] = mem[_5372 + 12 len 20]
                            mem[_5205 + 32] = address(_4986)
                            mem[mem[64] + 4] = address(_5414)
                            require ext_code.size(address(_4978))
                            staticcall address(_4978).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_5414)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5542 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_5205 + 64] = mem[_5542]
                            mem[_5205 + 96] = eth.balance(mem[_5205])
                            _5574 = mem[64]
                            mem[64] = mem[64] + 1184
                            mem[_5574] = 0
                            mem[_5574 + 32] = 0
                            mem[_5574 + 64] = 0
                            mem[_5574 + 96] = 0
                            mem[_5574 + 128] = 0
                            mem[_5574 + 160] = 0
                            mem[_5574 + 192] = 0
                            _5580 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5580] = 0
                            mem[_5580 + 32] = 0
                            mem[_5574 + 224] = _5580
                            _5586 = mem[64]
                            mem[64] = mem[64] + 448
                            mem[_5586] = 0
                            _5587 = mem[64]
                            mem[64] = mem[64] + 384
                            mem[_5587] = 0
                            mem[_5587 + 32] = 0
                            mem[_5587 + 64] = 0
                            mem[_5587 + 96] = 0
                            mem[_5587 + 128] = 0
                            mem[_5587 + 160] = 0
                            mem[_5587 + 192] = 0
                            mem[_5587 + 224] = 0
                            mem[_5587 + 256] = 0
                            mem[_5587 + 288] = 0
                            mem[_5587 + 320] = 96
                            mem[_5587 + 352] = 96
                            mem[_5586 + 32] = _5587
                            mem[_5586 + 64] = 96
                            mem[_5574 + 256] = _5586
                            _5597 = mem[64]
                            mem[64] = mem[64] + 192
                            mem[_5597] = 0
                            mem[_5597 + 32] = 0
                            mem[_5597 + 64] = 0
                            mem[_5597 + 96] = 0
                            mem[_5597 + 128] = 0
                            mem[_5597 + 160] = 0
                            mem[_5574 + 288] = _5597
                            _5605 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_5605] = 0
                            mem[_5605 + 32] = 0
                            mem[_5605 + 64] = 0
                            mem[_5605 + 96] = 0
                            mem[_5574 + 320] = _5605
                            _5614 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_5614] = 0
                            mem[_5614 + 32] = 0
                            mem[_5614 + 64] = 0
                            mem[_5614 + 96] = 0
                            mem[_5574 + 352] = _5614
                            mem[_5574] = 3
                            mem[_5574 + 160] = 0x100000000000000000000000000000000
                            mem[_5574 + 320] = _5205
                            require uint8(idx) < mem[_3847]
                            mem[(32 * uint8(idx)) + _3847 + 32] = _5574
                    else:
                        require uint8(idx) < mem[(32 * ('cd', 68).length) + 128]
                        _4959 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + 160]
                        require uint8(idx) < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                        _4969 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                        _4987 = mem[64]
                        mem[64] = mem[64] + 1184
                        mem[_4987] = 0
                        mem[_4987 + 32] = 0
                        mem[_4987 + 64] = 0
                        mem[_4987 + 96] = 0
                        mem[_4987 + 128] = 0
                        mem[_4987 + 160] = 0
                        mem[_4987 + 192] = 0
                        _4996 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4996] = 0
                        mem[_4996 + 32] = 0
                        mem[_4987 + 224] = _4996
                        _5016 = mem[64]
                        mem[64] = mem[64] + 448
                        mem[_5016] = 0
                        _5025 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_5025] = 0
                        mem[_5025 + 32] = 0
                        mem[_5025 + 64] = 0
                        mem[_5025 + 96] = 0
                        mem[_5025 + 128] = 0
                        mem[_5025 + 160] = 0
                        mem[_5025 + 192] = 0
                        mem[_5025 + 224] = 0
                        mem[_5025 + 256] = 0
                        mem[_5025 + 288] = 0
                        mem[_5025 + 320] = 96
                        mem[_5025 + 352] = 96
                        mem[_5016 + 32] = _5025
                        mem[_5016 + 64] = 96
                        mem[_4987 + 256] = _5016
                        _5058 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_5058] = 0
                        mem[_5058 + 32] = 0
                        mem[_5058 + 64] = 0
                        mem[_5058 + 96] = 0
                        mem[_5058 + 128] = 0
                        mem[_5058 + 160] = 0
                        mem[_4987 + 288] = _5058
                        _5086 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_5086] = 0
                        mem[_5086 + 32] = 0
                        mem[_5086 + 64] = 0
                        mem[_5086 + 96] = 0
                        mem[_4987 + 320] = _5086
                        _5123 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_5123] = 0
                        mem[_5123 + 32] = 0
                        mem[_5123 + 64] = 0
                        mem[_5123 + 96] = 0
                        mem[_4987 + 352] = _5123
                        _5170 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_5170] = 0
                        mem[_5170 + 32] = 0
                        mem[_5170 + 64] = 0
                        mem[_5170 + 96] = 0
                        mem[_5170 + 128] = 0
                        mem[_5170 + 160] = 0
                        mem[mem[64] + 4] = address(_4959)
                        require ext_code.size(uniswapAddress)
                        staticcall uniswapAddress.getExchange(address arg1) with:
                                gas gas_remaining wei
                               args address(_4959)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5342 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_5170] = mem[_5342 + 12 len 20]
                        mem[mem[64] + 4] = address(_4969)
                        require ext_code.size(uniswapAddress)
                        staticcall uniswapAddress.getExchange(address arg1) with:
                                gas gas_remaining wei
                               args address(_4969)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5535 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_5170 + 32] = mem[_5535 + 12 len 20]
                        _5572 = mem[_5170]
                        mem[mem[64] + 4] = mem[_5170 + 12 len 20]
                        require ext_code.size(address(_4959))
                        staticcall address(_4959).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_5572)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5606 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_5170 + 64] = mem[_5606]
                        mem[_5170 + 96] = eth.balance(mem[_5170])
                        _5637 = mem[_5170 + 32]
                        mem[_5170 + 128] = eth.balance(mem[_5170 + 32])
                        mem[mem[64] + 4] = mem[_5170 + 44 len 20]
                        require ext_code.size(address(_4969))
                        staticcall address(_4969).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_5637)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5666 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_5170 + 160] = mem[_5666]
                        _5701 = mem[64]
                        mem[64] = mem[64] + 1184
                        mem[_5701] = 0
                        mem[_5701 + 32] = 0
                        mem[_5701 + 64] = 0
                        mem[_5701 + 96] = 0
                        mem[_5701 + 128] = 0
                        mem[_5701 + 160] = 0
                        mem[_5701 + 192] = 0
                        _5703 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5703] = 0
                        mem[_5703 + 32] = 0
                        mem[_5701 + 224] = _5703
                        _5709 = mem[64]
                        mem[64] = mem[64] + 448
                        mem[_5709] = 0
                        _5713 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_5713] = 0
                        mem[_5713 + 32] = 0
                        mem[_5713 + 64] = 0
                        mem[_5713 + 96] = 0
                        mem[_5713 + 128] = 0
                        mem[_5713 + 160] = 0
                        mem[_5713 + 192] = 0
                        mem[_5713 + 224] = 0
                        mem[_5713 + 256] = 0
                        mem[_5713 + 288] = 0
                        mem[_5713 + 320] = 96
                        mem[_5713 + 352] = 96
                        mem[_5709 + 32] = _5713
                        mem[_5709 + 64] = 96
                        mem[_5701 + 256] = _5709
                        _5715 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_5715] = 0
                        mem[_5715 + 32] = 0
                        mem[_5715 + 64] = 0
                        mem[_5715 + 96] = 0
                        mem[_5715 + 128] = 0
                        mem[_5715 + 160] = 0
                        mem[_5701 + 288] = _5715
                        _5725 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_5725] = 0
                        mem[_5725 + 32] = 0
                        mem[_5725 + 64] = 0
                        mem[_5725 + 96] = 0
                        mem[_5701 + 320] = _5725
                        _5737 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_5737] = 0
                        mem[_5737 + 32] = 0
                        mem[_5737 + 64] = 0
                        mem[_5737 + 96] = 0
                        mem[_5701 + 352] = _5737
                        mem[_5701] = 2
                        mem[_5701 + 64] = address(_4969)
                        mem[_5701 + 160] = 0x100000000000000000000000000000000
                        mem[_5701 + 288] = _5170
                        require uint8(idx) < mem[_3847]
                        mem[(32 * uint8(idx)) + _3847 + 32] = _5701
                else:
                    require uint8(idx) < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192]
                    _4946 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224]
                    _4961 = mem[64]
                    mem[64] = mem[64] + 1184
                    mem[_4961] = 0
                    mem[_4961 + 32] = 0
                    mem[_4961 + 64] = 0
                    mem[_4961 + 96] = 0
                    mem[_4961 + 128] = 0
                    mem[_4961 + 160] = 0
                    mem[_4961 + 192] = 0
                    _4970 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4970] = 0
                    mem[_4970 + 32] = 0
                    mem[_4961 + 224] = _4970
                    _4988 = mem[64]
                    mem[64] = mem[64] + 448
                    mem[_4988] = 0
                    _4997 = mem[64]
                    mem[64] = mem[64] + 384
                    mem[_4997] = 0
                    mem[_4997 + 32] = 0
                    mem[_4997 + 64] = 0
                    mem[_4997 + 96] = 0
                    mem[_4997 + 128] = 0
                    mem[_4997 + 160] = 0
                    mem[_4997 + 192] = 0
                    mem[_4997 + 224] = 0
                    mem[_4997 + 256] = 0
                    mem[_4997 + 288] = 0
                    mem[_4997 + 320] = 96
                    mem[_4997 + 352] = 96
                    mem[_4988 + 32] = _4997
                    mem[_4988 + 64] = 96
                    mem[_4961 + 256] = _4988
                    _5026 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_5026] = 0
                    mem[_5026 + 32] = 0
                    mem[_5026 + 64] = 0
                    mem[_5026 + 96] = 0
                    mem[_5026 + 128] = 0
                    mem[_5026 + 160] = 0
                    mem[_4961 + 288] = _5026
                    _5046 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_5046] = 0
                    mem[_5046 + 32] = 0
                    mem[_5046 + 64] = 0
                    mem[_5046 + 96] = 0
                    mem[_4961 + 320] = _5046
                    _5072 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_5072] = 0
                    mem[_5072 + 32] = 0
                    mem[_5072 + 64] = 0
                    mem[_5072 + 96] = 0
                    mem[_4961 + 352] = _5072
                    _5124 = mem[64]
                    mem[64] = mem[64] + 384
                    mem[_5124] = 0
                    mem[_5124 + 32] = 0
                    mem[_5124 + 64] = 0
                    mem[_5124 + 96] = 0
                    mem[_5124 + 128] = 0
                    mem[_5124 + 160] = 0
                    mem[_5124 + 192] = 0
                    mem[_5124 + 224] = 0
                    mem[_5124 + 256] = 0
                    mem[_5124 + 288] = 0
                    mem[_5124 + 320] = 96
                    mem[_5124 + 352] = 96
                    _5171 = mem[64]
                    mem[64] = mem[64] + 384
                    mem[_5171] = 0
                    mem[_5171 + 32] = 0
                    mem[_5171 + 64] = 0
                    mem[_5171 + 96] = 0
                    mem[_5171 + 128] = 0
                    mem[_5171 + 160] = 0
                    mem[_5171 + 192] = 0
                    mem[_5171 + 224] = 0
                    mem[_5171 + 256] = 0
                    mem[_5171 + 288] = 0
                    mem[_5171 + 320] = 96
                    mem[_5171 + 352] = 96
                    _5206 = mem[64]
                    mem[64] = mem[64] + 384
                    mem[_5206] = 0
                    mem[_5206 + 32] = 0
                    mem[_5206 + 64] = 0
                    mem[_5206 + 96] = 0
                    mem[_5206 + 128] = 0
                    mem[_5206 + 160] = 0
                    mem[_5206 + 192] = 0
                    mem[_5206 + 224] = 0
                    mem[_5206 + 256] = 0
                    mem[_5206 + 288] = 0
                    mem[_5206 + 320] = 96
                    mem[_5206 + 352] = 96
                    mem[_5206] = mem[_4946 + 32 len 20]
                    mem[_5206 + 32] = mem[_4946 + 52 len 20]
                    mem[_5206 + 64] = mem[_4946 + 72 len 20]
                    mem[_5206 + 96] = mem[_4946 + 92 len 20]
                    mem[_5206 + 128] = mem[_4946 + 112]
                    mem[_5206 + 160] = mem[_4946 + 144]
                    mem[_5206 + 192] = mem[_4946 + 176]
                    mem[_5206 + 224] = mem[_4946 + 208]
                    mem[_5206 + 256] = mem[_4946 + 240]
                    mem[_5206 + 288] = mem[_4946 + 272]
                    _5234 = mem[64]
                    mem[64] = mem[64] + 68
                    mem[_5234] = 36
                    mem[_5234 + 32] = mem[_4946 + 304]
                    mem[_5234 + 64] = mem[_4946 + 336]
                    mem[_5206 + 320] = _5234
                    _5237 = mem[64]
                    mem[64] = mem[64] + 68
                    mem[_5237] = 36
                    mem[_5237 + 32] = mem[_4946 + 340]
                    mem[_5237 + 64] = mem[_4946 + 372]
                    mem[_5206 + 352] = _5237
                    _5262 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_5262] = 0
                    mem[_5262 + 32] = 0
                    mem[_5262 + 64] = 0
                    _5281 = mem[64]
                    mem[mem[64]] = 0xc75e0a8100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_5206 + 12 len 20]
                    mem[mem[64] + 68] = mem[_5206 + 44 len 20]
                    mem[mem[64] + 100] = mem[_5206 + 76 len 20]
                    mem[mem[64] + 132] = mem[_5206 + 108 len 20]
                    mem[mem[64] + 164] = mem[_5206 + 128]
                    mem[mem[64] + 196] = mem[_5206 + 160]
                    mem[mem[64] + 228] = mem[_5206 + 192]
                    mem[mem[64] + 260] = mem[_5206 + 224]
                    mem[mem[64] + 292] = mem[_5206 + 256]
                    mem[mem[64] + 324] = mem[_5206 + 288]
                    mem[mem[64] + 356] = 384
                    mem[mem[64] + 420] = 36
                    s = 0
                    while s < 36:
                        mem[s + mem[64] + 452] = mem[s + _5234 + 32]
                        s = s + 32
                        continue 
                    mem[mem[64] + 488] = 0
                    _6034 = mem[_5206 + 352]
                    mem[mem[64] + 388] = 480
                    _6052 = mem[_6034]
                    mem[mem[64] + 516] = mem[_6034]
                    s = 0
                    while s < _6052:
                        mem[s + mem[64] + 548] = mem[s + _6034 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_6052) <= _6052:
                        require ext_code.size(sub_560addeaAddress)
                        staticcall sub_560addeaAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _5281 + ceil32(_6052) + -mem[64] + 544]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7246 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _7357 = mem[64]
                        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                        mem[64] = mem[64] + 96
                        mem[_7357] = mem[_7246 + 31 len 1]
                        mem[_7357 + 32] = mem[_7246 + 32]
                        mem[_7357 + 64] = mem[_7246 + 64]
                        _7592 = mem[64]
                        mem[64] = mem[64] + 1184
                        mem[_7592] = 0
                        mem[_7592 + 32] = 0
                        mem[_7592 + 64] = 0
                        mem[_7592 + 96] = 0
                        mem[_7592 + 128] = 0
                        mem[_7592 + 160] = 0
                        mem[_7592 + 192] = 0
                        _7608 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7608] = 0
                        mem[_7608 + 32] = 0
                        mem[_7592 + 224] = _7608
                        _7645 = mem[64]
                        mem[64] = mem[64] + 448
                        mem[_7645] = 0
                        _7657 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_7657] = 0
                        mem[_7657 + 32] = 0
                        mem[_7657 + 64] = 0
                        mem[_7657 + 96] = 0
                        mem[_7657 + 128] = 0
                        mem[_7657 + 160] = 0
                        mem[_7657 + 192] = 0
                        mem[_7657 + 224] = 0
                        mem[_7657 + 256] = 0
                        mem[_7657 + 288] = 0
                        mem[_7657 + 320] = 96
                        mem[_7657 + 352] = 96
                        mem[_7645 + 32] = _7657
                        mem[_7645 + 64] = 96
                        mem[_7592 + 256] = _7645
                        _7698 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_7698] = 0
                        mem[_7698 + 32] = 0
                        mem[_7698 + 64] = 0
                        mem[_7698 + 96] = 0
                        mem[_7698 + 128] = 0
                        mem[_7698 + 160] = 0
                        mem[_7592 + 288] = _7698
                        _7728 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_7728] = 0
                        mem[_7728 + 32] = 0
                        mem[_7728 + 64] = 0
                        mem[_7728 + 96] = 0
                        mem[_7592 + 320] = _7728
                        _7745 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_7745] = 0
                        mem[_7745 + 32] = 0
                        mem[_7745 + 64] = 0
                        mem[_7745 + 96] = 0
                        mem[_7592 + 352] = _7745
                        if mem[_7357 + 31 len 1] != 3:
                            require uint8(idx) < mem[_3847]
                        mem[_7592] = 1
                        mem[_7592 + 160] = mem[_5206 + 160] - mem[_7357 + 64]
                        if not mem[_5206 + 128]:
                            require mem[_5206 + 160] > 0
                            require mem[_5206 + 160]
                            mem[_7592 + 192] = 0 / mem[_5206 + 160]
                            _7801 = mem[_4946 + 376]
                            _7802 = mem[64]
                            mem[64] = mem[64] + mem[_4946 + 376] + 32
                            mem[_7802] = _7801
                            s = 0
                            while s < _7801 + 32:
                                mem[s + _7802 + 32] = mem[_4946 + s + 408]
                                s = s + 32
                                continue 
                            _8115 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_8115] = sub_560addeaAddress
                            mem[_8115 + 32] = _5206
                            mem[_8115 + 64] = _7802
                            mem[_7592 + 256] = _8115
                        else:
                            require 1000000000 * 10^18 * mem[_5206 + 128] / mem[_5206 + 128] == 1000000000 * 10^18
                            require mem[_5206 + 160] > 0
                            require mem[_5206 + 160]
                            mem[_7592 + 192] = 1000000000 * 10^18 * mem[_5206 + 128] / mem[_5206 + 160]
                            _7814 = mem[_4946 + 376]
                            _7815 = mem[64]
                            mem[64] = mem[64] + mem[_4946 + 376] + 32
                            mem[_7815] = _7814
                            s = 0
                            while s < _7814 + 32:
                                mem[s + _7815 + 32] = mem[_4946 + s + 408]
                                s = s + 32
                                continue 
                            _8114 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_8114] = sub_560addeaAddress
                            mem[_8114 + 32] = _5206
                            mem[_8114 + 64] = _7815
                            mem[_7592 + 256] = _8114
                        require uint8(idx) < mem[_3847]
                        mem[(32 * uint8(idx)) + _3847 + 32] = _7592
                    else:
                        mem[_5281 + _6052 + 548] = 0
                        require ext_code.size(sub_560addeaAddress)
                        staticcall sub_560addeaAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _5281 + ceil32(_6052) + -mem[64] + 544]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7264 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _7376 = mem[64]
                        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                        mem[64] = mem[64] + 96
                        mem[_7376] = mem[_7264 + 31 len 1]
                        mem[_7376 + 32] = mem[_7264 + 32]
                        mem[_7376 + 64] = mem[_7264 + 64]
                        _7609 = mem[64]
                        mem[64] = mem[64] + 1184
                        mem[_7609] = 0
                        mem[_7609 + 32] = 0
                        mem[_7609 + 64] = 0
                        mem[_7609 + 96] = 0
                        mem[_7609 + 128] = 0
                        mem[_7609 + 160] = 0
                        mem[_7609 + 192] = 0
                        _7627 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7627] = 0
                        mem[_7627 + 32] = 0
                        mem[_7609 + 224] = _7627
                        _7658 = mem[64]
                        mem[64] = mem[64] + 448
                        mem[_7658] = 0
                        _7674 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_7674] = 0
                        mem[_7674 + 32] = 0
                        mem[_7674 + 64] = 0
                        mem[_7674 + 96] = 0
                        mem[_7674 + 128] = 0
                        mem[_7674 + 160] = 0
                        mem[_7674 + 192] = 0
                        mem[_7674 + 224] = 0
                        mem[_7674 + 256] = 0
                        mem[_7674 + 288] = 0
                        mem[_7674 + 320] = 96
                        mem[_7674 + 352] = 96
                        mem[_7658 + 32] = _7674
                        mem[_7658 + 64] = 96
                        mem[_7609 + 256] = _7658
                        _7723 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_7723] = 0
                        mem[_7723 + 32] = 0
                        mem[_7723 + 64] = 0
                        mem[_7723 + 96] = 0
                        mem[_7723 + 128] = 0
                        mem[_7723 + 160] = 0
                        mem[_7609 + 288] = _7723
                        _7734 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_7734] = 0
                        mem[_7734 + 32] = 0
                        mem[_7734 + 64] = 0
                        mem[_7734 + 96] = 0
                        mem[_7609 + 320] = _7734
                        _7748 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_7748] = 0
                        mem[_7748 + 32] = 0
                        mem[_7748 + 64] = 0
                        mem[_7748 + 96] = 0
                        mem[_7609 + 352] = _7748
                        if mem[_7376 + 31 len 1] != 3:
                            require uint8(idx) < mem[_3847]
                        mem[_7609] = 1
                        mem[_7609 + 160] = mem[_5206 + 160] - mem[_7376 + 64]
                        if not mem[_5206 + 128]:
                            require mem[_5206 + 160] > 0
                            require mem[_5206 + 160]
                            mem[_7609 + 192] = 0 / mem[_5206 + 160]
                            _7805 = mem[_4946 + 376]
                            _7806 = mem[64]
                            mem[64] = mem[64] + mem[_4946 + 376] + 32
                            mem[_7806] = _7805
                            s = 0
                            while s < _7805 + 32:
                                mem[s + _7806 + 32] = mem[_4946 + s + 408]
                                s = s + 32
                                continue 
                            _8117 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_8117] = sub_560addeaAddress
                            mem[_8117 + 32] = _5206
                            mem[_8117 + 64] = _7806
                            mem[_7609 + 256] = _8117
                        else:
                            require 1000000000 * 10^18 * mem[_5206 + 128] / mem[_5206 + 128] == 1000000000 * 10^18
                            require mem[_5206 + 160] > 0
                            require mem[_5206 + 160]
                            mem[_7609 + 192] = 1000000000 * 10^18 * mem[_5206 + 128] / mem[_5206 + 160]
                            _7830 = mem[_4946 + 376]
                            _7831 = mem[64]
                            mem[64] = mem[64] + mem[_4946 + 376] + 32
                            mem[_7831] = _7830
                            s = 0
                            while s < _7830 + 32:
                                mem[s + _7831 + 32] = mem[_4946 + s + 408]
                                s = s + 32
                                continue 
                            _8116 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_8116] = sub_560addeaAddress
                            mem[_8116 + 32] = _5206
                            mem[_8116 + 64] = _7831
                            mem[_7609 + 256] = _8116
                        require uint8(idx) < mem[_3847]
                        mem[(32 * uint8(idx)) + _3847 + 32] = _7609
            idx = idx + 1
            continue 
        _5995 = mem[_3847]
        idx = 0
        while uint8(idx) < _5995:
            if not uint8(idx):
                require 0 < mem[_3847]
                mem[mem[_3847 + 32] + 96] = cd[36]
            else:
                require uint8(idx - 1) < mem[_3847]
                require uint8(idx) < mem[_3847]
                mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96] = mem[mem[(32 * uint8(idx - 1)) + _3847 + 32] + 128]
            require uint8(idx) < mem[_3847]
            require uint8(idx) < mem[_3847]
            require uint8(idx) < mem[_3847]
            if mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96] > mem[mem[(32 * uint8(idx)) + _3847 + 32] + 160]:
                require uint8(idx) < mem[_3847]
                mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96] = mem[mem[(32 * uint8(idx)) + _3847 + 32] + 160]
                s = idx - 1
                while ('signextend', 0, ('var', 1)) >= 0:
                    require uint8(s + 1) < mem[_3847]
                    require uint8(s) < mem[_3847]
                    mem[mem[(32 * uint8(s)) + _3847 + 32] + 128] = mem[mem[(32 * uint8(s + 1)) + _3847 + 32] + 96]
                    require uint8(s) < mem[_3847]
                    require mem[mem[(32 * uint8(s)) + _3847 + 32]] <= 4
                    require uint8(s) < mem[_3847]
                    if not mem[mem[(32 * uint8(s)) + _3847 + 32]]:
                        if not mem[mem[(32 * uint8(s)) + _3847 + 32] + 128]:
                            require mem[mem[(32 * uint8(s)) + _3847 + 32] + 192] > 0
                            require mem[mem[(32 * uint8(s)) + _3847 + 32] + 192]
                            mem[mem[(32 * uint8(s)) + _3847 + 32] + 96] = 0 / mem[mem[(32 * uint8(s)) + _3847 + 32] + 192]
                        else:
                            require 1000000000 * 10^18 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128] / mem[mem[(32 * uint8(s)) + _3847 + 32] + 128] == 1000000000 * 10^18
                            require mem[mem[(32 * uint8(s)) + _3847 + 32] + 192] > 0
                            require mem[mem[(32 * uint8(s)) + _3847 + 32] + 192]
                            mem[mem[(32 * uint8(s)) + _3847 + 32] + 96] = 1000000000 * 10^18 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128] / mem[mem[(32 * uint8(s)) + _3847 + 32] + 192]
                    else:
                        require mem[mem[(32 * uint8(s)) + _3847 + 32]] <= 4
                        require uint8(s) < mem[_3847]
                        if mem[mem[(32 * uint8(s)) + _3847 + 32]] == 1:
                            if not mem[mem[(32 * uint8(s)) + _3847 + 32] + 128]:
                                require mem[mem[(32 * uint8(s)) + _3847 + 32] + 192] > 0
                                require mem[mem[(32 * uint8(s)) + _3847 + 32] + 192]
                                mem[mem[(32 * uint8(s)) + _3847 + 32] + 96] = 0 / mem[mem[(32 * uint8(s)) + _3847 + 32] + 192]
                            else:
                                require 1000000000 * 10^18 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128] / mem[mem[(32 * uint8(s)) + _3847 + 32] + 128] == 1000000000 * 10^18
                                require mem[mem[(32 * uint8(s)) + _3847 + 32] + 192] > 0
                                require mem[mem[(32 * uint8(s)) + _3847 + 32] + 192]
                                mem[mem[(32 * uint8(s)) + _3847 + 32] + 96] = 1000000000 * 10^18 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128] / mem[mem[(32 * uint8(s)) + _3847 + 32] + 192]
                        else:
                            require mem[mem[(32 * uint8(s)) + _3847 + 32]] <= 4
                            require uint8(s) < mem[_3847]
                            if mem[mem[(32 * uint8(s)) + _3847 + 32]] == 2:
                                require (997 * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 288] + 160]) - (997 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128])
                                require (997 * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 288] + 96]) - (997 * 1000 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128] * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 288] + 128] / (997 * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 288] + 160]) - (997 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128]))
                                mem[mem[(32 * uint8(s)) + _3847 + 32] + 96] = 1000 * 1000 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128] * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 288] + 128] / (997 * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 288] + 160]) - (997 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128]) * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 288] + 64] / (997 * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 288] + 96]) - (997 * 1000 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128] * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 288] + 128] / (997 * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 288] + 160]) - (997 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128]))
                            else:
                                require mem[mem[(32 * uint8(s)) + _3847 + 32]] <= 4
                                require uint8(s) < mem[_3847]
                                if mem[mem[(32 * uint8(s)) + _3847 + 32]] == 3:
                                    require (997 * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 320] + 96]) - (997 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128])
                                    mem[mem[(32 * uint8(s)) + _3847 + 32] + 96] = 1000 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128] * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 320] + 64] / (997 * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 320] + 96]) - (997 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128])
                                else:
                                    require mem[mem[(32 * uint8(s)) + _3847 + 32]] <= 4
                                    if mem[mem[(32 * uint8(s)) + _3847 + 32]] == 4:
                                        require uint8(s) < mem[_3847]
                                        require (997 * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 352] + 96]) - (997 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128])
                                        mem[mem[(32 * uint8(s)) + _3847 + 32] + 96] = 1000 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128] * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 352] + 64] / (997 * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 352] + 96]) - (997 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128])
                    _5995 = mem[_3847]
                    s = s - 1
                    continue 
            require mem[mem[(32 * uint8(idx)) + _3847 + 32]] <= 4
            require uint8(idx) < mem[_3847]
            if not mem[mem[(32 * uint8(idx)) + _3847 + 32]]:
                if not mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96]:
                    mem[mem[(32 * uint8(idx)) + _3847 + 32] + 128] = 0
                else:
                    require mem[mem[(32 * uint8(idx)) + _3847 + 32] + 192] * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96] / mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96] == mem[mem[(32 * uint8(idx)) + _3847 + 32] + 192]
                    mem[mem[(32 * uint8(idx)) + _3847 + 32] + 128] = mem[mem[(32 * uint8(idx)) + _3847 + 32] + 192] * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96] / 1000000000 * 10^18
            else:
                require mem[mem[(32 * uint8(idx)) + _3847 + 32]] <= 4
                require uint8(idx) < mem[_3847]
                if mem[mem[(32 * uint8(idx)) + _3847 + 32]] == 1:
                    if not mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96]:
                        mem[mem[(32 * uint8(idx)) + _3847 + 32] + 128] = 0
                    else:
                        require mem[mem[(32 * uint8(idx)) + _3847 + 32] + 192] * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96] / mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96] == mem[mem[(32 * uint8(idx)) + _3847 + 32] + 192]
                        mem[mem[(32 * uint8(idx)) + _3847 + 32] + 128] = mem[mem[(32 * uint8(idx)) + _3847 + 32] + 192] * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96] / 1000000000 * 10^18
                else:
                    require mem[mem[(32 * uint8(idx)) + _3847 + 32]] <= 4
                    require uint8(idx) < mem[_3847]
                    if mem[mem[(32 * uint8(idx)) + _3847 + 32]] == 2:
                        require (1000 * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 288] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96])
                        require (1000 * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 288] + 128]) + (997 * 997 * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96] * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 288] + 96] / (1000 * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 288] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96]))
                        mem[mem[(32 * uint8(idx)) + _3847 + 32] + 128] = 997 * 997 * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96] * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 288] + 96] / (1000 * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 288] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96]) * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 288] + 160] / (1000 * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 288] + 128]) + (997 * 997 * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96] * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 288] + 96] / (1000 * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 288] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96]))
                    else:
                        require mem[mem[(32 * uint8(idx)) + _3847 + 32]] <= 4
                        require uint8(idx) < mem[_3847]
                        if mem[mem[(32 * uint8(idx)) + _3847 + 32]] == 3:
                            require (1000 * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 320] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96])
                            mem[mem[(32 * uint8(idx)) + _3847 + 32] + 128] = 997 * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96] * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 320] + 96] / (1000 * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 320] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96])
                        else:
                            require mem[mem[(32 * uint8(idx)) + _3847 + 32]] <= 4
                            if mem[mem[(32 * uint8(idx)) + _3847 + 32]] == 4:
                                require uint8(idx) < mem[_3847]
                                require (1000 * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 352] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96])
                                mem[mem[(32 * uint8(idx)) + _3847 + 32] + 128] = 997 * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96] * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 352] + 96] / (1000 * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 352] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96])
            _5995 = mem[_3847]
            idx = idx + 1
            continue 
        require 0 < mem[_3847]
        require mem[_3847] - 1 < mem[_3847]
        if mem[mem[(32 * mem[_3847] - 1) + _3847 + 32] + 128] - mem[mem[_3847 + 32] + 96] >= cd[4]:
            _7120 = mem[_3847]
            idx = 0
            while uint8(idx) < _7120:
                require uint8(idx) < mem[_3847]
                require mem[mem[(32 * uint8(idx)) + _3847 + 32]] <= 4
                require uint8(idx) < mem[_3847]
                if not mem[mem[(32 * uint8(idx)) + _3847 + 32]]:
                    _7161 = mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 224]]
                    _7162 = mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 224] + 32]
                    _7163 = mem[mem[(32 * uint8(idx)) + _3847 + 32] + 128]
                    mem[mem[64]] = 'I`dU'
                    mem[mem[64] + 4] = _7162
                    mem[mem[64] + 36] = uint128(_7163)
                    require ext_code.size(address(_7161))
                    call address(_7161).'I`dU' with:
                         gas gas_remaining wei
                        args _7162, uint128(_7163)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require mem[mem[(32 * uint8(idx)) + _3847 + 32]] <= 4
                    require uint8(idx) < mem[_3847]
                    if mem[mem[(32 * uint8(idx)) + _3847 + 32]] != 1:
                        require mem[mem[(32 * uint8(idx)) + _3847 + 32]] <= 4
                        require uint8(idx) < mem[_3847]
                        if mem[mem[(32 * uint8(idx)) + _3847 + 32]] == 2:
                            _7248 = mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 288]]
                            _7250 = mem[mem[(32 * uint8(idx)) + _3847 + 32] + 128]
                            _7251 = mem[mem[(32 * uint8(idx)) + _3847 + 32] + 64]
                            mem[mem[64] + 4] = mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96]
                            mem[mem[64] + 36] = _7250 - 100
                            mem[mem[64] + 68] = 1
                            mem[mem[64] + 100] = block.timestamp
                            mem[mem[64] + 132] = address(_7251)
                            require ext_code.size(address(_7248))
                            call address(_7248).tokenToTokenSwapInput(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _7250 - 100, 1, block.timestamp, address(_7251)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                        else:
                            require mem[mem[(32 * uint8(idx)) + _3847 + 32]] <= 4
                            require uint8(idx) < mem[_3847]
                            if mem[mem[(32 * uint8(idx)) + _3847 + 32]] == 3:
                                _7287 = mem[(32 * uint8(idx)) + _3847 + 32]
                                _7314 = mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 320]]
                                _7316 = mem[mem[(32 * uint8(idx)) + _3847 + 32] + 128]
                                mem[mem[64] + 4] = mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96]
                                mem[mem[64] + 36] = _7316 - 10
                                mem[mem[64] + 68] = block.timestamp
                                require ext_code.size(address(_7314))
                                call address(_7314).tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _7316 - 10, block.timestamp
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7639 = mem[mem[_7287 + 320] + 32]
                                _7640 = mem[_7287 + 128]
                                mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(_7639))
                                call address(_7639).deposit() with:
                                   value _7640 - 10 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require mem[mem[(32 * uint8(idx)) + _3847 + 32]] <= 4
                                if mem[mem[(32 * uint8(idx)) + _3847 + 32]] == 4:
                                    require uint8(idx) < mem[_3847]
                                    _7359 = mem[(32 * uint8(idx)) + _3847 + 32]
                                    _7380 = mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 352]]
                                    _7381 = mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96]
                                    mem[mem[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7381
                                    require ext_code.size(address(_7380))
                                    call address(_7380).withdraw(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _7381
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7475 = mem[mem[_7359 + 352] + 32]
                                    _7476 = mem[_7359 + 96]
                                    mem[mem[64] + 4] = mem[_7359 + 128] - 10
                                    mem[mem[64] + 36] = block.timestamp
                                    require ext_code.size(address(_7475))
                                    call address(_7475).ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
                                       value _7476 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], block.timestamp
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                    else:
                        _7201 = mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 256]]
                        _7202 = mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 256] + 32]
                        _7203 = mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96]
                        _7204 = mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 256] + 64]
                        _7205 = mem[64]
                        mem[mem[64]] = 0x64a3bc1500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_7202 + 12 len 20]
                        mem[mem[64] + 132] = mem[_7202 + 44 len 20]
                        mem[mem[64] + 164] = mem[_7202 + 76 len 20]
                        mem[mem[64] + 196] = mem[_7202 + 108 len 20]
                        mem[mem[64] + 228] = mem[_7202 + 128]
                        mem[mem[64] + 260] = mem[_7202 + 160]
                        mem[mem[64] + 292] = mem[_7202 + 192]
                        mem[mem[64] + 324] = mem[_7202 + 224]
                        mem[mem[64] + 356] = mem[_7202 + 256]
                        mem[mem[64] + 388] = mem[_7202 + 288]
                        _7798 = mem[_7202 + 320]
                        mem[mem[64] + 420] = 384
                        _7810 = mem[_7798]
                        mem[mem[64] + 484] = mem[_7798]
                        s = 0
                        while s < _7810:
                            mem[s + mem[64] + 516] = mem[s + _7798 + 32]
                            _7120 = mem[_3847]
                            s = s + 32
                            continue 
                        if ceil32(_7810) <= _7810:
                            _8143 = mem[_7202 + 352]
                            mem[_7205 + 452] = ceil32(_7810) + 416
                            _8156 = mem[_8143]
                            mem[_7205 + ceil32(_7810) + 516] = mem[_8143]
                            s = 0
                            while s < _8156:
                                mem[s + _7205 + ceil32(_7810) + 548] = mem[s + _8143 + 32]
                                _7120 = mem[_3847]
                                s = s + 32
                                continue 
                            if ceil32(_8156) <= _8156:
                                mem[_7205 + 36] = _7203 - 10
                                mem[_7205 + 68] = ceil32(_7810) + ceil32(_8156) + 544
                                _8764 = mem[_7204]
                                mem[_7205 + ceil32(_7810) + ceil32(_8156) + 548] = mem[_7204]
                                s = 0
                                while s < _8764:
                                    mem[s + _7205 + ceil32(_7810) + ceil32(_8156) + 580] = mem[s + _7204 + 32]
                                    _7120 = mem[_3847]
                                    s = s + 32
                                    continue 
                                if ceil32(_8764) > _8764:
                                    mem[_7205 + ceil32(_7810) + ceil32(_8156) + _8764 + 580] = 0
                                require ext_code.size(address(_7201))
                                call address(_7201).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7205 + ceil32(_7810) + ceil32(_8156) + ceil32(_8764) + -mem[64] + 576]
                            else:
                                mem[_7205 + ceil32(_7810) + _8156 + 548] = 0
                                mem[_7205 + 36] = _7203 - 10
                                mem[_7205 + 68] = ceil32(_7810) + ceil32(_8156) + 544
                                _8781 = mem[_7204]
                                mem[_7205 + ceil32(_7810) + ceil32(_8156) + 548] = mem[_7204]
                                s = 0
                                while s < _8781:
                                    mem[s + _7205 + ceil32(_7810) + ceil32(_8156) + 580] = mem[s + _7204 + 32]
                                    _7120 = mem[_3847]
                                    s = s + 32
                                    continue 
                                if ceil32(_8781) > _8781:
                                    mem[_7205 + ceil32(_7810) + ceil32(_8156) + _8781 + 580] = 0
                                require ext_code.size(address(_7201))
                                call address(_7201).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7205 + ceil32(_7810) + ceil32(_8156) + ceil32(_8781) + -mem[64] + 576]
                        else:
                            mem[_7205 + _7810 + 516] = 0
                            _8148 = mem[_7202 + 352]
                            mem[_7205 + 452] = ceil32(_7810) + 416
                            _8164 = mem[_8148]
                            mem[_7205 + ceil32(_7810) + 516] = mem[_8148]
                            s = 0
                            while s < _8164:
                                mem[s + _7205 + ceil32(_7810) + 548] = mem[s + _8148 + 32]
                                _7120 = mem[_3847]
                                s = s + 32
                                continue 
                            if ceil32(_8164) <= _8164:
                                mem[_7205 + 36] = _7203 - 10
                                mem[_7205 + 68] = ceil32(_7810) + ceil32(_8164) + 544
                                _8765 = mem[_7204]
                                mem[_7205 + ceil32(_7810) + ceil32(_8164) + 548] = mem[_7204]
                                s = 0
                                while s < _8765:
                                    mem[s + _7205 + ceil32(_7810) + ceil32(_8164) + 580] = mem[s + _7204 + 32]
                                    _7120 = mem[_3847]
                                    s = s + 32
                                    continue 
                                if ceil32(_8765) > _8765:
                                    mem[_7205 + ceil32(_7810) + ceil32(_8164) + _8765 + 580] = 0
                                require ext_code.size(address(_7201))
                                call address(_7201).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7205 + ceil32(_7810) + ceil32(_8164) + ceil32(_8765) + -mem[64] + 576]
                            else:
                                mem[_7205 + ceil32(_7810) + _8164 + 548] = 0
                                mem[_7205 + 36] = _7203 - 10
                                mem[_7205 + 68] = ceil32(_7810) + ceil32(_8164) + 544
                                _8782 = mem[_7204]
                                mem[_7205 + ceil32(_7810) + ceil32(_8164) + 548] = mem[_7204]
                                s = 0
                                while s < _8782:
                                    mem[s + _7205 + ceil32(_7810) + ceil32(_8164) + 580] = mem[s + _7204 + 32]
                                    _7120 = mem[_3847]
                                    s = s + 32
                                    continue 
                                if ceil32(_8782) > _8782:
                                    mem[_7205 + ceil32(_7810) + ceil32(_8164) + _8782 + 580] = 0
                                require ext_code.size(address(_7201))
                                call address(_7201).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7205 + ceil32(_7810) + ceil32(_8164) + ceil32(_8782) + -mem[64] + 576]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                _7120 = mem[_3847]
                idx = idx + 1
                continue 
    else:
        mem[_3847 + (32 * _3846) + 32] = 0
        mem[_3847 + (32 * _3846) + 64] = 0
        mem[_3847 + (32 * _3846) + 96] = 0
        mem[_3847 + (32 * _3846) + 128] = 0
        mem[_3847 + (32 * _3846) + 160] = 0
        mem[_3847 + (32 * _3846) + 192] = 0
        mem[_3847 + (32 * _3846) + 224] = 0
        mem[_3847 + (32 * _3846) + 1216] = 0
        mem[_3847 + (32 * _3846) + 1248] = 0
        mem[_3847 + (32 * _3846) + 256] = _3847 + (32 * _3846) + 1216
        mem[_3847 + (32 * _3846) + 1280] = 0
        mem[_3847 + (32 * _3846) + 1728] = 0
        mem[_3847 + (32 * _3846) + 1760] = 0
        mem[_3847 + (32 * _3846) + 1792] = 0
        mem[_3847 + (32 * _3846) + 1824] = 0
        mem[_3847 + (32 * _3846) + 1856] = 0
        mem[_3847 + (32 * _3846) + 1888] = 0
        mem[_3847 + (32 * _3846) + 1920] = 0
        mem[_3847 + (32 * _3846) + 1952] = 0
        mem[_3847 + (32 * _3846) + 1984] = 0
        mem[_3847 + (32 * _3846) + 2016] = 0
        mem[_3847 + (32 * _3846) + 2048] = 96
        mem[_3847 + (32 * _3846) + 2080] = 96
        mem[_3847 + (32 * _3846) + 1312] = _3847 + (32 * _3846) + 1728
        mem[_3847 + (32 * _3846) + 1344] = 96
        mem[_3847 + (32 * _3846) + 288] = _3847 + (32 * _3846) + 1280
        mem[_3847 + (32 * _3846) + 2112] = 0
        mem[_3847 + (32 * _3846) + 2144] = 0
        mem[_3847 + (32 * _3846) + 2176] = 0
        mem[_3847 + (32 * _3846) + 2208] = 0
        mem[_3847 + (32 * _3846) + 2240] = 0
        mem[_3847 + (32 * _3846) + 2272] = 0
        mem[_3847 + (32 * _3846) + 320] = _3847 + (32 * _3846) + 2112
        mem[_3847 + (32 * _3846) + 2304] = 0
        mem[_3847 + (32 * _3846) + 2336] = 0
        mem[_3847 + (32 * _3846) + 2368] = 0
        mem[_3847 + (32 * _3846) + 2400] = 0
        mem[_3847 + (32 * _3846) + 352] = _3847 + (32 * _3846) + 2304
        mem[64] = _3847 + (32 * _3846) + 2560
        mem[_3847 + (32 * _3846) + 2432] = 0
        mem[_3847 + (32 * _3846) + 2464] = 0
        mem[_3847 + (32 * _3846) + 2496] = 0
        mem[_3847 + (32 * _3846) + 2528] = 0
        mem[_3847 + (32 * _3846) + 384] = _3847 + (32 * _3846) + 2432
        mem[var93002] = _3847 + (32 * _3846) + 32
        s = _3847 + (32 * _3846) + 256
        s = _3847 + (32 * _3846) + 32
        s = var93002
        idx = var93003
        while idx - 1:
            _7312 = mem[64]
            mem[64] = mem[64] + 1184
            mem[_7312] = 0
            mem[_7312 + 32] = 0
            mem[_7312 + 64] = 0
            mem[_7312 + 96] = 0
            mem[_7312 + 128] = 0
            mem[_7312 + 160] = 0
            mem[_7312 + 192] = 0
            mem[64] = mem[64] + 64
            mem[_3847 + (32 * _3846) + 1216] = 0
            mem[_3847 + (32 * _3846) + 1248] = 0
            mem[_7312 + 224] = _3847 + (32 * _3846) + 1216
            mem[64] = mem[64] + 448
            mem[_3847 + (32 * _3846) + 1280] = 0
            mem[64] = mem[64] + 384
            mem[_3847 + (32 * _3846) + 1728] = 0
            mem[_3847 + (32 * _3846) + 1760] = 0
            mem[_3847 + (32 * _3846) + 1792] = 0
            mem[_3847 + (32 * _3846) + 1824] = 0
            mem[_3847 + (32 * _3846) + 1856] = 0
            mem[_3847 + (32 * _3846) + 1888] = 0
            mem[_3847 + (32 * _3846) + 1920] = 0
            mem[_3847 + (32 * _3846) + 1952] = 0
            mem[_3847 + (32 * _3846) + 1984] = 0
            mem[_3847 + (32 * _3846) + 2016] = 0
            mem[_3847 + (32 * _3846) + 2048] = 96
            mem[_3847 + (32 * _3846) + 2080] = 96
            mem[_3847 + (32 * _3846) + 1312] = _3847 + (32 * _3846) + 1728
            mem[_3847 + (32 * _3846) + 1344] = 96
            mem[_7312 + 256] = _3847 + (32 * _3846) + 1280
            mem[64] = mem[64] + 192
            mem[_3847 + (32 * _3846) + 2112] = 0
            mem[_3847 + (32 * _3846) + 2144] = 0
            mem[_3847 + (32 * _3846) + 2176] = 0
            mem[_3847 + (32 * _3846) + 2208] = 0
            mem[_3847 + (32 * _3846) + 2240] = 0
            mem[_3847 + (32 * _3846) + 2272] = 0
            mem[_7312 + 288] = _3847 + (32 * _3846) + 2112
            mem[64] = mem[64] + 128
            mem[_3847 + (32 * _3846) + 2304] = 0
            mem[_3847 + (32 * _3846) + 2336] = 0
            mem[_3847 + (32 * _3846) + 2368] = 0
            mem[_3847 + (32 * _3846) + 2400] = 0
            mem[_7312 + 320] = _3847 + (32 * _3846) + 2304
            mem[64] = mem[64] + 128
            mem[_3847 + (32 * _3846) + 2432] = 0
            mem[_3847 + (32 * _3846) + 2464] = 0
            mem[_3847 + (32 * _3846) + 2496] = 0
            mem[_3847 + (32 * _3846) + 2528] = 0
            mem[_7312 + 352] = _3847 + (32 * _3846) + 2432
            mem[s + 32] = _7312
            s = _7312 + 224
            s = _7312
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while uint8(idx) < _3846:
            require uint8(idx) < mem[96]
            if not mem[(32 * uint8(idx)) + 159 len 1]:
                require uint8(idx) < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192]
                _8137 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224]
                _8147 = mem[64]
                mem[64] = mem[64] + 1184
                mem[_8147] = 0
                mem[_8147 + 32] = 0
                mem[_8147 + 64] = 0
                mem[_8147 + 96] = 0
                mem[_8147 + 128] = 0
                mem[_8147 + 160] = 0
                mem[_8147 + 192] = 0
                _8155 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8155] = 0
                mem[_8155 + 32] = 0
                mem[_8147 + 224] = _8155
                _8173 = mem[64]
                mem[64] = mem[64] + 448
                mem[_8173] = 0
                _8182 = mem[64]
                mem[64] = mem[64] + 384
                mem[_8182] = 0
                mem[_8182 + 32] = 0
                mem[_8182 + 64] = 0
                mem[_8182 + 96] = 0
                mem[_8182 + 128] = 0
                mem[_8182 + 160] = 0
                mem[_8182 + 192] = 0
                mem[_8182 + 224] = 0
                mem[_8182 + 256] = 0
                mem[_8182 + 288] = 0
                mem[_8182 + 320] = 96
                mem[_8182 + 352] = 96
                mem[_8173 + 32] = _8182
                mem[_8173 + 64] = 96
                mem[_8147 + 256] = _8173
                _8209 = mem[64]
                mem[64] = mem[64] + 192
                mem[_8209] = 0
                mem[_8209 + 32] = 0
                mem[_8209 + 64] = 0
                mem[_8209 + 96] = 0
                mem[_8209 + 128] = 0
                mem[_8209 + 160] = 0
                mem[_8147 + 288] = _8209
                _8229 = mem[64]
                mem[64] = mem[64] + 128
                mem[_8229] = 0
                mem[_8229 + 32] = 0
                mem[_8229 + 64] = 0
                mem[_8229 + 96] = 0
                mem[_8147 + 320] = _8229
                _8249 = mem[64]
                mem[64] = mem[64] + 128
                mem[_8249] = 0
                mem[_8249 + 32] = 0
                mem[_8249 + 64] = 0
                mem[_8249 + 96] = 0
                mem[_8147 + 352] = _8249
                _8286 = mem[_8137 + 32]
                require ext_code.size(sub_3ec7a073Address)
                staticcall sub_3ec7a073Address.offers(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[_8137 + 32]
                mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _8394 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 192
                _8408 = mem[_8394]
                _8453 = mem[_8394 + 64]
                _8494 = mem[64]
                mem[64] = mem[64] + 1184
                mem[_8494] = 0
                mem[_8494 + 32] = 0
                mem[_8494 + 64] = 0
                mem[_8494 + 96] = 0
                mem[_8494 + 128] = 0
                mem[_8494 + 160] = 0
                mem[_8494 + 192] = 0
                _8498 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8498] = 0
                mem[_8498 + 32] = 0
                mem[_8494 + 224] = _8498
                _8502 = mem[64]
                mem[64] = mem[64] + 448
                mem[_8502] = 0
                _8504 = mem[64]
                mem[64] = mem[64] + 384
                mem[_8504] = 0
                mem[_8504 + 32] = 0
                mem[_8504 + 64] = 0
                mem[_8504 + 96] = 0
                mem[_8504 + 128] = 0
                mem[_8504 + 160] = 0
                mem[_8504 + 192] = 0
                mem[_8504 + 224] = 0
                mem[_8504 + 256] = 0
                mem[_8504 + 288] = 0
                mem[_8504 + 320] = 96
                mem[_8504 + 352] = 96
                mem[_8502 + 32] = _8504
                mem[_8502 + 64] = 96
                mem[_8494 + 256] = _8502
                _8511 = mem[64]
                mem[64] = mem[64] + 192
                mem[_8511] = 0
                mem[_8511 + 32] = 0
                mem[_8511 + 64] = 0
                mem[_8511 + 96] = 0
                mem[_8511 + 128] = 0
                mem[_8511 + 160] = 0
                mem[_8494 + 288] = _8511
                _8516 = mem[64]
                mem[64] = mem[64] + 128
                mem[_8516] = 0
                mem[_8516 + 32] = 0
                mem[_8516 + 64] = 0
                mem[_8516 + 96] = 0
                mem[_8494 + 320] = _8516
                _8522 = mem[64]
                mem[64] = mem[64] + 128
                mem[_8522] = 0
                mem[_8522 + 32] = 0
                mem[_8522 + 64] = 0
                mem[_8522 + 96] = 0
                mem[_8494 + 352] = _8522
                if _8453 < 100:
                    require uint8(idx) < mem[_3847]
                mem[_8494] = 0
                mem[_8494 + 160] = _8453
                if not _8408:
                    require _8453 > 0
                    require _8453
                    mem[_8494 + 192] = 0 / _8453
                    _8531 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8531] = sub_3ec7a073Address
                    mem[_8531 + 32] = _8286
                    mem[_8494 + 224] = _8531
                else:
                    require 1000000000 * 10^18 * _8408 / _8408 == 1000000000 * 10^18
                    require _8453 > 0
                    require _8453
                    mem[_8494 + 192] = 1000000000 * 10^18 * _8408 / _8453
                    _8535 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8535] = sub_3ec7a073Address
                    mem[_8535 + 32] = _8286
                    mem[_8494 + 224] = _8535
                require uint8(idx) < mem[_3847]
                mem[(32 * uint8(idx)) + _3847 + 32] = _8494
            else:
                require uint8(idx) < mem[96]
                if mem[(32 * uint8(idx)) + 159 len 1] != 1:
                    require uint8(idx) < mem[96]
                    if mem[(32 * uint8(idx)) + 159 len 1] != 2:
                        require uint8(idx) < mem[96]
                        if mem[(32 * uint8(idx)) + 159 len 1] != 3:
                            require uint8(idx) < mem[96]
                            if mem[(32 * uint8(idx)) + 159 len 1] == 4:
                                require uint8(idx) < mem[(32 * ('cd', 68).length) + 128]
                                _8195 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + 160]
                                require uint8(idx) < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                                _8207 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                                _8226 = mem[64]
                                mem[64] = mem[64] + 1184
                                mem[_8226] = 0
                                mem[_8226 + 32] = 0
                                mem[_8226 + 64] = 0
                                mem[_8226 + 96] = 0
                                mem[_8226 + 128] = 0
                                mem[_8226 + 160] = 0
                                mem[_8226 + 192] = 0
                                _8239 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8239] = 0
                                mem[_8239 + 32] = 0
                                mem[_8226 + 224] = _8239
                                _8259 = mem[64]
                                mem[64] = mem[64] + 448
                                mem[_8259] = 0
                                _8272 = mem[64]
                                mem[64] = mem[64] + 384
                                mem[_8272] = 0
                                mem[_8272 + 32] = 0
                                mem[_8272 + 64] = 0
                                mem[_8272 + 96] = 0
                                mem[_8272 + 128] = 0
                                mem[_8272 + 160] = 0
                                mem[_8272 + 192] = 0
                                mem[_8272 + 224] = 0
                                mem[_8272 + 256] = 0
                                mem[_8272 + 288] = 0
                                mem[_8272 + 320] = 96
                                mem[_8272 + 352] = 96
                                mem[_8259 + 32] = _8272
                                mem[_8259 + 64] = 96
                                mem[_8226 + 256] = _8259
                                _8310 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_8310] = 0
                                mem[_8310 + 32] = 0
                                mem[_8310 + 64] = 0
                                mem[_8310 + 96] = 0
                                mem[_8310 + 128] = 0
                                mem[_8310 + 160] = 0
                                mem[_8226 + 288] = _8310
                                _8330 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_8330] = 0
                                mem[_8330 + 32] = 0
                                mem[_8330 + 64] = 0
                                mem[_8330 + 96] = 0
                                mem[_8226 + 320] = _8330
                                _8358 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_8358] = 0
                                mem[_8358 + 32] = 0
                                mem[_8358 + 64] = 0
                                mem[_8358 + 96] = 0
                                mem[_8226 + 352] = _8358
                                _8393 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_8393 + 32] = 0
                                mem[_8393 + 64] = 0
                                mem[_8393 + 96] = 0
                                mem[_8393] = address(_8195)
                                mem[mem[64] + 4] = address(_8207)
                                require ext_code.size(uniswapAddress)
                                staticcall uniswapAddress.getExchange(address arg1) with:
                                        gas gas_remaining wei
                                       args address(_8207)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8436 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8442 = mem[_8436]
                                mem[_8393 + 32] = mem[_8436 + 12 len 20]
                                mem[_8393 + 64] = eth.balance(_8442)
                                mem[mem[64] + 4] = address(_8442)
                                require ext_code.size(address(_8207))
                                staticcall address(_8207).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_8442)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8471 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[_8393 + 96] = mem[_8471]
                                _8486 = mem[64]
                                mem[64] = mem[64] + 1184
                                mem[_8486] = 0
                                mem[_8486 + 32] = 0
                                mem[_8486 + 64] = 0
                                mem[_8486 + 96] = 0
                                mem[_8486 + 128] = 0
                                mem[_8486 + 160] = 0
                                mem[_8486 + 192] = 0
                                _8488 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8488] = 0
                                mem[_8488 + 32] = 0
                                mem[_8486 + 224] = _8488
                                _8491 = mem[64]
                                mem[64] = mem[64] + 448
                                mem[_8491] = 0
                                _8492 = mem[64]
                                mem[64] = mem[64] + 384
                                mem[_8492] = 0
                                mem[_8492 + 32] = 0
                                mem[_8492 + 64] = 0
                                mem[_8492 + 96] = 0
                                mem[_8492 + 128] = 0
                                mem[_8492 + 160] = 0
                                mem[_8492 + 192] = 0
                                mem[_8492 + 224] = 0
                                mem[_8492 + 256] = 0
                                mem[_8492 + 288] = 0
                                mem[_8492 + 320] = 96
                                mem[_8492 + 352] = 96
                                mem[_8491 + 32] = _8492
                                mem[_8491 + 64] = 96
                                mem[_8486 + 256] = _8491
                                _8499 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_8499] = 0
                                mem[_8499 + 32] = 0
                                mem[_8499 + 64] = 0
                                mem[_8499 + 96] = 0
                                mem[_8499 + 128] = 0
                                mem[_8499 + 160] = 0
                                mem[_8486 + 288] = _8499
                                _8505 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_8505] = 0
                                mem[_8505 + 32] = 0
                                mem[_8505 + 64] = 0
                                mem[_8505 + 96] = 0
                                mem[_8486 + 320] = _8505
                                _8510 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_8510] = 0
                                mem[_8510 + 32] = 0
                                mem[_8510 + 64] = 0
                                mem[_8510 + 96] = 0
                                mem[_8486] = 4
                                mem[_8486 + 160] = 0x100000000000000000000000000000000
                                mem[_8486 + 352] = _8393
                                require uint8(idx) < mem[_3847]
                                mem[(32 * uint8(idx)) + _3847 + 32] = _8486
                        else:
                            require uint8(idx) < mem[(32 * ('cd', 68).length) + 128]
                            _8180 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + 160]
                            require uint8(idx) < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                            _8187 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                            _8208 = mem[64]
                            mem[64] = mem[64] + 1184
                            mem[_8208] = 0
                            mem[_8208 + 32] = 0
                            mem[_8208 + 64] = 0
                            mem[_8208 + 96] = 0
                            mem[_8208 + 128] = 0
                            mem[_8208 + 160] = 0
                            mem[_8208 + 192] = 0
                            _8216 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8216] = 0
                            mem[_8216 + 32] = 0
                            mem[_8208 + 224] = _8216
                            _8240 = mem[64]
                            mem[64] = mem[64] + 448
                            mem[_8240] = 0
                            _8247 = mem[64]
                            mem[64] = mem[64] + 384
                            mem[_8247] = 0
                            mem[_8247 + 32] = 0
                            mem[_8247 + 64] = 0
                            mem[_8247 + 96] = 0
                            mem[_8247 + 128] = 0
                            mem[_8247 + 160] = 0
                            mem[_8247 + 192] = 0
                            mem[_8247 + 224] = 0
                            mem[_8247 + 256] = 0
                            mem[_8247 + 288] = 0
                            mem[_8247 + 320] = 96
                            mem[_8247 + 352] = 96
                            mem[_8240 + 32] = _8247
                            mem[_8240 + 64] = 96
                            mem[_8208 + 256] = _8240
                            _8284 = mem[64]
                            mem[64] = mem[64] + 192
                            mem[_8284] = 0
                            mem[_8284 + 32] = 0
                            mem[_8284 + 64] = 0
                            mem[_8284 + 96] = 0
                            mem[_8284 + 128] = 0
                            mem[_8284 + 160] = 0
                            mem[_8208 + 288] = _8284
                            _8311 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_8311] = 0
                            mem[_8311 + 32] = 0
                            mem[_8311 + 64] = 0
                            mem[_8311 + 96] = 0
                            mem[_8208 + 320] = _8311
                            _8331 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_8331] = 0
                            mem[_8331 + 32] = 0
                            mem[_8331 + 64] = 0
                            mem[_8331 + 96] = 0
                            mem[_8208 + 352] = _8331
                            _8365 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_8365] = 0
                            mem[_8365 + 32] = 0
                            mem[_8365 + 64] = 0
                            mem[_8365 + 96] = 0
                            mem[mem[64] + 4] = address(_8180)
                            require ext_code.size(uniswapAddress)
                            staticcall uniswapAddress.getExchange(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_8180)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8427 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8439 = mem[_8427]
                            mem[_8365] = mem[_8427 + 12 len 20]
                            mem[_8365 + 32] = address(_8187)
                            mem[mem[64] + 4] = address(_8439)
                            require ext_code.size(address(_8180))
                            staticcall address(_8180).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_8439)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8469 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_8365 + 64] = mem[_8469]
                            mem[_8365 + 96] = eth.balance(mem[_8365])
                            _8482 = mem[64]
                            mem[64] = mem[64] + 1184
                            mem[_8482] = 0
                            mem[_8482 + 32] = 0
                            mem[_8482 + 64] = 0
                            mem[_8482 + 96] = 0
                            mem[_8482 + 128] = 0
                            mem[_8482 + 160] = 0
                            mem[_8482 + 192] = 0
                            _8485 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8485] = 0
                            mem[_8485 + 32] = 0
                            mem[_8482 + 224] = _8485
                            _8489 = mem[64]
                            mem[64] = mem[64] + 448
                            mem[_8489] = 0
                            _8490 = mem[64]
                            mem[64] = mem[64] + 384
                            mem[_8490] = 0
                            mem[_8490 + 32] = 0
                            mem[_8490 + 64] = 0
                            mem[_8490 + 96] = 0
                            mem[_8490 + 128] = 0
                            mem[_8490 + 160] = 0
                            mem[_8490 + 192] = 0
                            mem[_8490 + 224] = 0
                            mem[_8490 + 256] = 0
                            mem[_8490 + 288] = 0
                            mem[_8490 + 320] = 96
                            mem[_8490 + 352] = 96
                            mem[_8489 + 32] = _8490
                            mem[_8489 + 64] = 96
                            mem[_8482 + 256] = _8489
                            _8496 = mem[64]
                            mem[64] = mem[64] + 192
                            mem[_8496] = 0
                            mem[_8496 + 32] = 0
                            mem[_8496 + 64] = 0
                            mem[_8496 + 96] = 0
                            mem[_8496 + 128] = 0
                            mem[_8496 + 160] = 0
                            mem[_8482 + 288] = _8496
                            _8500 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_8500] = 0
                            mem[_8500 + 32] = 0
                            mem[_8500 + 64] = 0
                            mem[_8500 + 96] = 0
                            mem[_8482 + 320] = _8500
                            _8506 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_8506] = 0
                            mem[_8506 + 32] = 0
                            mem[_8506 + 64] = 0
                            mem[_8506 + 96] = 0
                            mem[_8482 + 352] = _8506
                            mem[_8482] = 3
                            mem[_8482 + 160] = 0x100000000000000000000000000000000
                            mem[_8482 + 320] = _8365
                            require uint8(idx) < mem[_3847]
                            mem[(32 * uint8(idx)) + _3847 + 32] = _8482
                    else:
                        require uint8(idx) < mem[(32 * ('cd', 68).length) + 128]
                        _8161 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + 160]
                        require uint8(idx) < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                        _8171 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                        _8188 = mem[64]
                        mem[64] = mem[64] + 1184
                        mem[_8188] = 0
                        mem[_8188 + 32] = 0
                        mem[_8188 + 64] = 0
                        mem[_8188 + 96] = 0
                        mem[_8188 + 128] = 0
                        mem[_8188 + 160] = 0
                        mem[_8188 + 192] = 0
                        _8197 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8197] = 0
                        mem[_8197 + 32] = 0
                        mem[_8188 + 224] = _8197
                        _8217 = mem[64]
                        mem[64] = mem[64] + 448
                        mem[_8217] = 0
                        _8227 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_8227] = 0
                        mem[_8227 + 32] = 0
                        mem[_8227 + 64] = 0
                        mem[_8227 + 96] = 0
                        mem[_8227 + 128] = 0
                        mem[_8227 + 160] = 0
                        mem[_8227 + 192] = 0
                        mem[_8227 + 224] = 0
                        mem[_8227 + 256] = 0
                        mem[_8227 + 288] = 0
                        mem[_8227 + 320] = 96
                        mem[_8227 + 352] = 96
                        mem[_8217 + 32] = _8227
                        mem[_8217 + 64] = 96
                        mem[_8188 + 256] = _8217
                        _8260 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_8260] = 0
                        mem[_8260 + 32] = 0
                        mem[_8260 + 64] = 0
                        mem[_8260 + 96] = 0
                        mem[_8260 + 128] = 0
                        mem[_8260 + 160] = 0
                        mem[_8188 + 288] = _8260
                        _8285 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_8285] = 0
                        mem[_8285 + 32] = 0
                        mem[_8285 + 64] = 0
                        mem[_8285 + 96] = 0
                        mem[_8188 + 320] = _8285
                        _8312 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_8312] = 0
                        mem[_8312 + 32] = 0
                        mem[_8312 + 64] = 0
                        mem[_8312 + 96] = 0
                        mem[_8188 + 352] = _8312
                        _8343 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_8343] = 0
                        mem[_8343 + 32] = 0
                        mem[_8343 + 64] = 0
                        mem[_8343 + 96] = 0
                        mem[_8343 + 128] = 0
                        mem[_8343 + 160] = 0
                        mem[mem[64] + 4] = address(_8161)
                        require ext_code.size(uniswapAddress)
                        staticcall uniswapAddress.getExchange(address arg1) with:
                                gas gas_remaining wei
                               args address(_8161)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8422 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_8343] = mem[_8422 + 12 len 20]
                        mem[mem[64] + 4] = address(_8171)
                        require ext_code.size(uniswapAddress)
                        staticcall uniswapAddress.getExchange(address arg1) with:
                                gas gas_remaining wei
                               args address(_8171)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8465 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_8343 + 32] = mem[_8465 + 12 len 20]
                        _8480 = mem[_8343]
                        mem[mem[64] + 4] = mem[_8343 + 12 len 20]
                        require ext_code.size(address(_8161))
                        staticcall address(_8161).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_8480)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8501 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_8343 + 64] = mem[_8501]
                        mem[_8343 + 96] = eth.balance(mem[_8343])
                        _8520 = mem[_8343 + 32]
                        mem[_8343 + 128] = eth.balance(mem[_8343 + 32])
                        mem[mem[64] + 4] = mem[_8343 + 44 len 20]
                        require ext_code.size(address(_8171))
                        staticcall address(_8171).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_8520)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8528 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_8343 + 160] = mem[_8528]
                        _8543 = mem[64]
                        mem[64] = mem[64] + 1184
                        mem[_8543] = 0
                        mem[_8543 + 32] = 0
                        mem[_8543 + 64] = 0
                        mem[_8543 + 96] = 0
                        mem[_8543 + 128] = 0
                        mem[_8543 + 160] = 0
                        mem[_8543 + 192] = 0
                        _8545 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8545] = 0
                        mem[_8545 + 32] = 0
                        mem[_8543 + 224] = _8545
                        _8549 = mem[64]
                        mem[64] = mem[64] + 448
                        mem[_8549] = 0
                        _8551 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_8551] = 0
                        mem[_8551 + 32] = 0
                        mem[_8551 + 64] = 0
                        mem[_8551 + 96] = 0
                        mem[_8551 + 128] = 0
                        mem[_8551 + 160] = 0
                        mem[_8551 + 192] = 0
                        mem[_8551 + 224] = 0
                        mem[_8551 + 256] = 0
                        mem[_8551 + 288] = 0
                        mem[_8551 + 320] = 96
                        mem[_8551 + 352] = 96
                        mem[_8549 + 32] = _8551
                        mem[_8549 + 64] = 96
                        mem[_8543 + 256] = _8549
                        _8552 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_8552] = 0
                        mem[_8552 + 32] = 0
                        mem[_8552 + 64] = 0
                        mem[_8552 + 96] = 0
                        mem[_8552 + 128] = 0
                        mem[_8552 + 160] = 0
                        mem[_8543 + 288] = _8552
                        _8560 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_8560] = 0
                        mem[_8560 + 32] = 0
                        mem[_8560 + 64] = 0
                        mem[_8560 + 96] = 0
                        mem[_8543 + 320] = _8560
                        _8569 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_8569] = 0
                        mem[_8569 + 32] = 0
                        mem[_8569 + 64] = 0
                        mem[_8569 + 96] = 0
                        mem[_8543 + 352] = _8569
                        mem[_8543] = 2
                        mem[_8543 + 64] = address(_8171)
                        mem[_8543 + 160] = 0x100000000000000000000000000000000
                        mem[_8543 + 288] = _8343
                        require uint8(idx) < mem[_3847]
                        mem[(32 * uint8(idx)) + _3847 + 32] = _8543
                else:
                    require uint8(idx) < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192]
                    _8146 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224]
                    _8163 = mem[64]
                    mem[64] = mem[64] + 1184
                    mem[_8163] = 0
                    mem[_8163 + 32] = 0
                    mem[_8163 + 64] = 0
                    mem[_8163 + 96] = 0
                    mem[_8163 + 128] = 0
                    mem[_8163 + 160] = 0
                    mem[_8163 + 192] = 0
                    _8172 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8172] = 0
                    mem[_8172 + 32] = 0
                    mem[_8163 + 224] = _8172
                    _8189 = mem[64]
                    mem[64] = mem[64] + 448
                    mem[_8189] = 0
                    _8198 = mem[64]
                    mem[64] = mem[64] + 384
                    mem[_8198] = 0
                    mem[_8198 + 32] = 0
                    mem[_8198 + 64] = 0
                    mem[_8198 + 96] = 0
                    mem[_8198 + 128] = 0
                    mem[_8198 + 160] = 0
                    mem[_8198 + 192] = 0
                    mem[_8198 + 224] = 0
                    mem[_8198 + 256] = 0
                    mem[_8198 + 288] = 0
                    mem[_8198 + 320] = 96
                    mem[_8198 + 352] = 96
                    mem[_8189 + 32] = _8198
                    mem[_8189 + 64] = 96
                    mem[_8163 + 256] = _8189
                    _8228 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_8228] = 0
                    mem[_8228 + 32] = 0
                    mem[_8228 + 64] = 0
                    mem[_8228 + 96] = 0
                    mem[_8228 + 128] = 0
                    mem[_8228 + 160] = 0
                    mem[_8163 + 288] = _8228
                    _8248 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_8248] = 0
                    mem[_8248 + 32] = 0
                    mem[_8248 + 64] = 0
                    mem[_8248 + 96] = 0
                    mem[_8163 + 320] = _8248
                    _8273 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_8273] = 0
                    mem[_8273 + 32] = 0
                    mem[_8273 + 64] = 0
                    mem[_8273 + 96] = 0
                    mem[_8163 + 352] = _8273
                    _8313 = mem[64]
                    mem[64] = mem[64] + 384
                    mem[_8313] = 0
                    mem[_8313 + 32] = 0
                    mem[_8313 + 64] = 0
                    mem[_8313 + 96] = 0
                    mem[_8313 + 128] = 0
                    mem[_8313 + 160] = 0
                    mem[_8313 + 192] = 0
                    mem[_8313 + 224] = 0
                    mem[_8313 + 256] = 0
                    mem[_8313 + 288] = 0
                    mem[_8313 + 320] = 96
                    mem[_8313 + 352] = 96
                    _8344 = mem[64]
                    mem[64] = mem[64] + 384
                    mem[_8344] = 0
                    mem[_8344 + 32] = 0
                    mem[_8344 + 64] = 0
                    mem[_8344 + 96] = 0
                    mem[_8344 + 128] = 0
                    mem[_8344 + 160] = 0
                    mem[_8344 + 192] = 0
                    mem[_8344 + 224] = 0
                    mem[_8344 + 256] = 0
                    mem[_8344 + 288] = 0
                    mem[_8344 + 320] = 96
                    mem[_8344 + 352] = 96
                    _8366 = mem[64]
                    mem[64] = mem[64] + 384
                    mem[_8366] = 0
                    mem[_8366 + 32] = 0
                    mem[_8366 + 64] = 0
                    mem[_8366 + 96] = 0
                    mem[_8366 + 128] = 0
                    mem[_8366 + 160] = 0
                    mem[_8366 + 192] = 0
                    mem[_8366 + 224] = 0
                    mem[_8366 + 256] = 0
                    mem[_8366 + 288] = 0
                    mem[_8366 + 320] = 96
                    mem[_8366 + 352] = 96
                    mem[_8366] = mem[_8146 + 32 len 20]
                    mem[_8366 + 32] = mem[_8146 + 52 len 20]
                    mem[_8366 + 64] = mem[_8146 + 72 len 20]
                    mem[_8366 + 96] = mem[_8146 + 92 len 20]
                    mem[_8366 + 128] = mem[_8146 + 112]
                    mem[_8366 + 160] = mem[_8146 + 144]
                    mem[_8366 + 192] = mem[_8146 + 176]
                    mem[_8366 + 224] = mem[_8146 + 208]
                    mem[_8366 + 256] = mem[_8146 + 240]
                    mem[_8366 + 288] = mem[_8146 + 272]
                    _8386 = mem[64]
                    mem[64] = mem[64] + 68
                    mem[_8386] = 36
                    mem[_8386 + 32] = mem[_8146 + 304]
                    mem[_8386 + 64] = mem[_8146 + 336]
                    mem[_8366 + 320] = _8386
                    _8389 = mem[64]
                    mem[64] = mem[64] + 68
                    mem[_8389] = 36
                    mem[_8389 + 32] = mem[_8146 + 340]
                    mem[_8389 + 64] = mem[_8146 + 372]
                    mem[_8366 + 352] = _8389
                    _8398 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_8398] = 0
                    mem[_8398 + 32] = 0
                    mem[_8398 + 64] = 0
                    _8406 = mem[64]
                    mem[mem[64]] = 0xc75e0a8100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_8366 + 12 len 20]
                    mem[mem[64] + 68] = mem[_8366 + 44 len 20]
                    mem[mem[64] + 100] = mem[_8366 + 76 len 20]
                    mem[mem[64] + 132] = mem[_8366 + 108 len 20]
                    mem[mem[64] + 164] = mem[_8366 + 128]
                    mem[mem[64] + 196] = mem[_8366 + 160]
                    mem[mem[64] + 228] = mem[_8366 + 192]
                    mem[mem[64] + 260] = mem[_8366 + 224]
                    mem[mem[64] + 292] = mem[_8366 + 256]
                    mem[mem[64] + 324] = mem[_8366 + 288]
                    mem[mem[64] + 356] = 384
                    mem[mem[64] + 420] = 36
                    s = 0
                    while s < 36:
                        mem[s + mem[64] + 452] = mem[s + _8386 + 32]
                        s = s + 32
                        continue 
                    mem[mem[64] + 488] = 0
                    _8717 = mem[_8366 + 352]
                    mem[mem[64] + 388] = 480
                    _8734 = mem[_8717]
                    mem[mem[64] + 516] = mem[_8717]
                    s = 0
                    while s < _8734:
                        mem[s + mem[64] + 548] = mem[s + _8717 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_8734) <= _8734:
                        require ext_code.size(sub_560addeaAddress)
                        staticcall sub_560addeaAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _8406 + ceil32(_8734) + -mem[64] + 544]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9414 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _9524 = mem[64]
                        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                        mem[64] = mem[64] + 96
                        mem[_9524] = mem[_9414 + 31 len 1]
                        mem[_9524 + 32] = mem[_9414 + 32]
                        mem[_9524 + 64] = mem[_9414 + 64]
                        _9603 = mem[64]
                        mem[64] = mem[64] + 1184
                        mem[_9603] = 0
                        mem[_9603 + 32] = 0
                        mem[_9603 + 64] = 0
                        mem[_9603 + 96] = 0
                        mem[_9603 + 128] = 0
                        mem[_9603 + 160] = 0
                        mem[_9603 + 192] = 0
                        _9606 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9606] = 0
                        mem[_9606 + 32] = 0
                        mem[_9603 + 224] = _9606
                        _9619 = mem[64]
                        mem[64] = mem[64] + 448
                        mem[_9619] = 0
                        _9623 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_9623] = 0
                        mem[_9623 + 32] = 0
                        mem[_9623 + 64] = 0
                        mem[_9623 + 96] = 0
                        mem[_9623 + 128] = 0
                        mem[_9623 + 160] = 0
                        mem[_9623 + 192] = 0
                        mem[_9623 + 224] = 0
                        mem[_9623 + 256] = 0
                        mem[_9623 + 288] = 0
                        mem[_9623 + 320] = 96
                        mem[_9623 + 352] = 96
                        mem[_9619 + 32] = _9623
                        mem[_9619 + 64] = 96
                        mem[_9603 + 256] = _9619
                        _9631 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_9631] = 0
                        mem[_9631 + 32] = 0
                        mem[_9631 + 64] = 0
                        mem[_9631 + 96] = 0
                        mem[_9631 + 128] = 0
                        mem[_9631 + 160] = 0
                        mem[_9603 + 288] = _9631
                        _9635 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_9635] = 0
                        mem[_9635 + 32] = 0
                        mem[_9635 + 64] = 0
                        mem[_9635 + 96] = 0
                        mem[_9603 + 320] = _9635
                        _9640 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_9640] = 0
                        mem[_9640 + 32] = 0
                        mem[_9640 + 64] = 0
                        mem[_9640 + 96] = 0
                        mem[_9603 + 352] = _9640
                        if mem[_9524 + 31 len 1] != 3:
                            require uint8(idx) < mem[_3847]
                        mem[_9603] = 1
                        mem[_9603 + 160] = mem[_8366 + 160] - mem[_9524 + 64]
                        if not mem[_8366 + 128]:
                            require mem[_8366 + 160] > 0
                            require mem[_8366 + 160]
                            mem[_9603 + 192] = 0 / mem[_8366 + 160]
                            _9672 = mem[_8146 + 376]
                            _9673 = mem[64]
                            mem[64] = mem[64] + mem[_8146 + 376] + 32
                            mem[_9673] = _9672
                            s = 0
                            while s < _9672 + 32:
                                mem[s + _9673 + 32] = mem[_8146 + s + 408]
                                s = s + 32
                                continue 
                            _9748 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_9748] = sub_560addeaAddress
                            mem[_9748 + 32] = _8366
                            mem[_9748 + 64] = _9673
                            mem[_9603 + 256] = _9748
                        else:
                            require 1000000000 * 10^18 * mem[_8366 + 128] / mem[_8366 + 128] == 1000000000 * 10^18
                            require mem[_8366 + 160] > 0
                            require mem[_8366 + 160]
                            mem[_9603 + 192] = 1000000000 * 10^18 * mem[_8366 + 128] / mem[_8366 + 160]
                            _9682 = mem[_8146 + 376]
                            _9683 = mem[64]
                            mem[64] = mem[64] + mem[_8146 + 376] + 32
                            mem[_9683] = _9682
                            s = 0
                            while s < _9682 + 32:
                                mem[s + _9683 + 32] = mem[_8146 + s + 408]
                                s = s + 32
                                continue 
                            _9747 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_9747] = sub_560addeaAddress
                            mem[_9747 + 32] = _8366
                            mem[_9747 + 64] = _9683
                            mem[_9603 + 256] = _9747
                        require uint8(idx) < mem[_3847]
                        mem[(32 * uint8(idx)) + _3847 + 32] = _9603
                    else:
                        mem[_8406 + _8734 + 548] = 0
                        require ext_code.size(sub_560addeaAddress)
                        staticcall sub_560addeaAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _8406 + ceil32(_8734) + -mem[64] + 544]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9432 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _9542 = mem[64]
                        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                        mem[64] = mem[64] + 96
                        mem[_9542] = mem[_9432 + 31 len 1]
                        mem[_9542 + 32] = mem[_9432 + 32]
                        mem[_9542 + 64] = mem[_9432 + 64]
                        _9607 = mem[64]
                        mem[64] = mem[64] + 1184
                        mem[_9607] = 0
                        mem[_9607 + 32] = 0
                        mem[_9607 + 64] = 0
                        mem[_9607 + 96] = 0
                        mem[_9607 + 128] = 0
                        mem[_9607 + 160] = 0
                        mem[_9607 + 192] = 0
                        _9611 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9611] = 0
                        mem[_9611 + 32] = 0
                        mem[_9607 + 224] = _9611
                        _9624 = mem[64]
                        mem[64] = mem[64] + 448
                        mem[_9624] = 0
                        _9627 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_9627] = 0
                        mem[_9627 + 32] = 0
                        mem[_9627 + 64] = 0
                        mem[_9627 + 96] = 0
                        mem[_9627 + 128] = 0
                        mem[_9627 + 160] = 0
                        mem[_9627 + 192] = 0
                        mem[_9627 + 224] = 0
                        mem[_9627 + 256] = 0
                        mem[_9627 + 288] = 0
                        mem[_9627 + 320] = 96
                        mem[_9627 + 352] = 96
                        mem[_9624 + 32] = _9627
                        mem[_9624 + 64] = 96
                        mem[_9607 + 256] = _9624
                        _9633 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_9633] = 0
                        mem[_9633 + 32] = 0
                        mem[_9633 + 64] = 0
                        mem[_9633 + 96] = 0
                        mem[_9633 + 128] = 0
                        mem[_9633 + 160] = 0
                        mem[_9607 + 288] = _9633
                        _9637 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_9637] = 0
                        mem[_9637 + 32] = 0
                        mem[_9637 + 64] = 0
                        mem[_9637 + 96] = 0
                        mem[_9607 + 320] = _9637
                        _9642 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_9642] = 0
                        mem[_9642 + 32] = 0
                        mem[_9642 + 64] = 0
                        mem[_9642 + 96] = 0
                        mem[_9607 + 352] = _9642
                        if mem[_9542 + 31 len 1] != 3:
                            require uint8(idx) < mem[_3847]
                        mem[_9607] = 1
                        mem[_9607 + 160] = mem[_8366 + 160] - mem[_9542 + 64]
                        if not mem[_8366 + 128]:
                            require mem[_8366 + 160] > 0
                            require mem[_8366 + 160]
                            mem[_9607 + 192] = 0 / mem[_8366 + 160]
                            _9676 = mem[_8146 + 376]
                            _9677 = mem[64]
                            mem[64] = mem[64] + mem[_8146 + 376] + 32
                            mem[_9677] = _9676
                            s = 0
                            while s < _9676 + 32:
                                mem[s + _9677 + 32] = mem[_8146 + s + 408]
                                s = s + 32
                                continue 
                            _9750 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_9750] = sub_560addeaAddress
                            mem[_9750 + 32] = _8366
                            mem[_9750 + 64] = _9677
                            mem[_9607 + 256] = _9750
                        else:
                            require 1000000000 * 10^18 * mem[_8366 + 128] / mem[_8366 + 128] == 1000000000 * 10^18
                            require mem[_8366 + 160] > 0
                            require mem[_8366 + 160]
                            mem[_9607 + 192] = 1000000000 * 10^18 * mem[_8366 + 128] / mem[_8366 + 160]
                            _9690 = mem[_8146 + 376]
                            _9691 = mem[64]
                            mem[64] = mem[64] + mem[_8146 + 376] + 32
                            mem[_9691] = _9690
                            s = 0
                            while s < _9690 + 32:
                                mem[s + _9691 + 32] = mem[_8146 + s + 408]
                                s = s + 32
                                continue 
                            _9749 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_9749] = sub_560addeaAddress
                            mem[_9749 + 32] = _8366
                            mem[_9749 + 64] = _9691
                            mem[_9607 + 256] = _9749
                        require uint8(idx) < mem[_3847]
                        mem[(32 * uint8(idx)) + _3847 + 32] = _9607
            idx = idx + 1
            continue 
        _8680 = mem[_3847]
        idx = 0
        while uint8(idx) < _8680:
            if not uint8(idx):
                require 0 < mem[_3847]
                mem[mem[_3847 + 32] + 96] = cd[36]
            else:
                require uint8(idx - 1) < mem[_3847]
                require uint8(idx) < mem[_3847]
                mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96] = mem[mem[(32 * uint8(idx - 1)) + _3847 + 32] + 128]
            require uint8(idx) < mem[_3847]
            require uint8(idx) < mem[_3847]
            require uint8(idx) < mem[_3847]
            if mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96] > mem[mem[(32 * uint8(idx)) + _3847 + 32] + 160]:
                require uint8(idx) < mem[_3847]
                mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96] = mem[mem[(32 * uint8(idx)) + _3847 + 32] + 160]
                s = idx - 1
                while ('signextend', 0, ('var', 1)) >= 0:
                    require uint8(s + 1) < mem[_3847]
                    require uint8(s) < mem[_3847]
                    mem[mem[(32 * uint8(s)) + _3847 + 32] + 128] = mem[mem[(32 * uint8(s + 1)) + _3847 + 32] + 96]
                    require uint8(s) < mem[_3847]
                    require mem[mem[(32 * uint8(s)) + _3847 + 32]] <= 4
                    require uint8(s) < mem[_3847]
                    if not mem[mem[(32 * uint8(s)) + _3847 + 32]]:
                        if not mem[mem[(32 * uint8(s)) + _3847 + 32] + 128]:
                            require mem[mem[(32 * uint8(s)) + _3847 + 32] + 192] > 0
                            require mem[mem[(32 * uint8(s)) + _3847 + 32] + 192]
                            mem[mem[(32 * uint8(s)) + _3847 + 32] + 96] = 0 / mem[mem[(32 * uint8(s)) + _3847 + 32] + 192]
                        else:
                            require 1000000000 * 10^18 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128] / mem[mem[(32 * uint8(s)) + _3847 + 32] + 128] == 1000000000 * 10^18
                            require mem[mem[(32 * uint8(s)) + _3847 + 32] + 192] > 0
                            require mem[mem[(32 * uint8(s)) + _3847 + 32] + 192]
                            mem[mem[(32 * uint8(s)) + _3847 + 32] + 96] = 1000000000 * 10^18 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128] / mem[mem[(32 * uint8(s)) + _3847 + 32] + 192]
                    else:
                        require mem[mem[(32 * uint8(s)) + _3847 + 32]] <= 4
                        require uint8(s) < mem[_3847]
                        if mem[mem[(32 * uint8(s)) + _3847 + 32]] == 1:
                            if not mem[mem[(32 * uint8(s)) + _3847 + 32] + 128]:
                                require mem[mem[(32 * uint8(s)) + _3847 + 32] + 192] > 0
                                require mem[mem[(32 * uint8(s)) + _3847 + 32] + 192]
                                mem[mem[(32 * uint8(s)) + _3847 + 32] + 96] = 0 / mem[mem[(32 * uint8(s)) + _3847 + 32] + 192]
                            else:
                                require 1000000000 * 10^18 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128] / mem[mem[(32 * uint8(s)) + _3847 + 32] + 128] == 1000000000 * 10^18
                                require mem[mem[(32 * uint8(s)) + _3847 + 32] + 192] > 0
                                require mem[mem[(32 * uint8(s)) + _3847 + 32] + 192]
                                mem[mem[(32 * uint8(s)) + _3847 + 32] + 96] = 1000000000 * 10^18 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128] / mem[mem[(32 * uint8(s)) + _3847 + 32] + 192]
                        else:
                            require mem[mem[(32 * uint8(s)) + _3847 + 32]] <= 4
                            require uint8(s) < mem[_3847]
                            if mem[mem[(32 * uint8(s)) + _3847 + 32]] == 2:
                                require (997 * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 288] + 160]) - (997 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128])
                                require (997 * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 288] + 96]) - (997 * 1000 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128] * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 288] + 128] / (997 * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 288] + 160]) - (997 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128]))
                                mem[mem[(32 * uint8(s)) + _3847 + 32] + 96] = 1000 * 1000 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128] * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 288] + 128] / (997 * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 288] + 160]) - (997 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128]) * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 288] + 64] / (997 * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 288] + 96]) - (997 * 1000 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128] * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 288] + 128] / (997 * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 288] + 160]) - (997 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128]))
                            else:
                                require mem[mem[(32 * uint8(s)) + _3847 + 32]] <= 4
                                require uint8(s) < mem[_3847]
                                if mem[mem[(32 * uint8(s)) + _3847 + 32]] == 3:
                                    require (997 * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 320] + 96]) - (997 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128])
                                    mem[mem[(32 * uint8(s)) + _3847 + 32] + 96] = 1000 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128] * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 320] + 64] / (997 * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 320] + 96]) - (997 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128])
                                else:
                                    require mem[mem[(32 * uint8(s)) + _3847 + 32]] <= 4
                                    if mem[mem[(32 * uint8(s)) + _3847 + 32]] == 4:
                                        require uint8(s) < mem[_3847]
                                        require (997 * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 352] + 96]) - (997 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128])
                                        mem[mem[(32 * uint8(s)) + _3847 + 32] + 96] = 1000 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128] * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 352] + 64] / (997 * mem[mem[mem[(32 * uint8(s)) + _3847 + 32] + 352] + 96]) - (997 * mem[mem[(32 * uint8(s)) + _3847 + 32] + 128])
                    _8680 = mem[_3847]
                    s = s - 1
                    continue 
            require mem[mem[(32 * uint8(idx)) + _3847 + 32]] <= 4
            require uint8(idx) < mem[_3847]
            if not mem[mem[(32 * uint8(idx)) + _3847 + 32]]:
                if not mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96]:
                    mem[mem[(32 * uint8(idx)) + _3847 + 32] + 128] = 0
                else:
                    require mem[mem[(32 * uint8(idx)) + _3847 + 32] + 192] * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96] / mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96] == mem[mem[(32 * uint8(idx)) + _3847 + 32] + 192]
                    mem[mem[(32 * uint8(idx)) + _3847 + 32] + 128] = mem[mem[(32 * uint8(idx)) + _3847 + 32] + 192] * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96] / 1000000000 * 10^18
            else:
                require mem[mem[(32 * uint8(idx)) + _3847 + 32]] <= 4
                require uint8(idx) < mem[_3847]
                if mem[mem[(32 * uint8(idx)) + _3847 + 32]] == 1:
                    if not mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96]:
                        mem[mem[(32 * uint8(idx)) + _3847 + 32] + 128] = 0
                    else:
                        require mem[mem[(32 * uint8(idx)) + _3847 + 32] + 192] * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96] / mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96] == mem[mem[(32 * uint8(idx)) + _3847 + 32] + 192]
                        mem[mem[(32 * uint8(idx)) + _3847 + 32] + 128] = mem[mem[(32 * uint8(idx)) + _3847 + 32] + 192] * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96] / 1000000000 * 10^18
                else:
                    require mem[mem[(32 * uint8(idx)) + _3847 + 32]] <= 4
                    require uint8(idx) < mem[_3847]
                    if mem[mem[(32 * uint8(idx)) + _3847 + 32]] == 2:
                        require (1000 * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 288] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96])
                        require (1000 * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 288] + 128]) + (997 * 997 * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96] * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 288] + 96] / (1000 * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 288] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96]))
                        mem[mem[(32 * uint8(idx)) + _3847 + 32] + 128] = 997 * 997 * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96] * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 288] + 96] / (1000 * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 288] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96]) * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 288] + 160] / (1000 * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 288] + 128]) + (997 * 997 * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96] * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 288] + 96] / (1000 * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 288] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96]))
                    else:
                        require mem[mem[(32 * uint8(idx)) + _3847 + 32]] <= 4
                        require uint8(idx) < mem[_3847]
                        if mem[mem[(32 * uint8(idx)) + _3847 + 32]] == 3:
                            require (1000 * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 320] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96])
                            mem[mem[(32 * uint8(idx)) + _3847 + 32] + 128] = 997 * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96] * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 320] + 96] / (1000 * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 320] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96])
                        else:
                            require mem[mem[(32 * uint8(idx)) + _3847 + 32]] <= 4
                            if mem[mem[(32 * uint8(idx)) + _3847 + 32]] == 4:
                                require uint8(idx) < mem[_3847]
                                require (1000 * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 352] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96])
                                mem[mem[(32 * uint8(idx)) + _3847 + 32] + 128] = 997 * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96] * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 352] + 96] / (1000 * mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 352] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96])
            _8680 = mem[_3847]
            idx = idx + 1
            continue 
        require 0 < mem[_3847]
        require mem[_3847] - 1 < mem[_3847]
        if mem[mem[(32 * mem[_3847] - 1) + _3847 + 32] + 128] - mem[mem[_3847 + 32] + 96] >= cd[4]:
            _9282 = mem[_3847]
            idx = 0
            while uint8(idx) < _9282:
                require uint8(idx) < mem[_3847]
                require mem[mem[(32 * uint8(idx)) + _3847 + 32]] <= 4
                require uint8(idx) < mem[_3847]
                if not mem[mem[(32 * uint8(idx)) + _3847 + 32]]:
                    _9324 = mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 224]]
                    _9325 = mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 224] + 32]
                    _9326 = mem[mem[(32 * uint8(idx)) + _3847 + 32] + 128]
                    mem[mem[64]] = 'I`dU'
                    mem[mem[64] + 4] = _9325
                    mem[mem[64] + 36] = uint128(_9326)
                    require ext_code.size(address(_9324))
                    call address(_9324).'I`dU' with:
                         gas gas_remaining wei
                        args _9325, uint128(_9326)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require mem[mem[(32 * uint8(idx)) + _3847 + 32]] <= 4
                    require uint8(idx) < mem[_3847]
                    if mem[mem[(32 * uint8(idx)) + _3847 + 32]] != 1:
                        require mem[mem[(32 * uint8(idx)) + _3847 + 32]] <= 4
                        require uint8(idx) < mem[_3847]
                        if mem[mem[(32 * uint8(idx)) + _3847 + 32]] == 2:
                            _9416 = mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 288]]
                            _9418 = mem[mem[(32 * uint8(idx)) + _3847 + 32] + 128]
                            _9419 = mem[mem[(32 * uint8(idx)) + _3847 + 32] + 64]
                            mem[mem[64] + 4] = mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96]
                            mem[mem[64] + 36] = _9418 - 100
                            mem[mem[64] + 68] = 1
                            mem[mem[64] + 100] = block.timestamp
                            mem[mem[64] + 132] = address(_9419)
                            require ext_code.size(address(_9416))
                            call address(_9416).tokenToTokenSwapInput(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _9418 - 100, 1, block.timestamp, address(_9419)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                        else:
                            require mem[mem[(32 * uint8(idx)) + _3847 + 32]] <= 4
                            require uint8(idx) < mem[_3847]
                            if mem[mem[(32 * uint8(idx)) + _3847 + 32]] == 3:
                                _9455 = mem[(32 * uint8(idx)) + _3847 + 32]
                                _9481 = mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 320]]
                                _9483 = mem[mem[(32 * uint8(idx)) + _3847 + 32] + 128]
                                mem[mem[64] + 4] = mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96]
                                mem[mem[64] + 36] = _9483 - 10
                                mem[mem[64] + 68] = block.timestamp
                                require ext_code.size(address(_9481))
                                call address(_9481).tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _9483 - 10, block.timestamp
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _9613 = mem[mem[_9455 + 320] + 32]
                                _9614 = mem[_9455 + 128]
                                mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(_9613))
                                call address(_9613).deposit() with:
                                   value _9614 - 10 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require mem[mem[(32 * uint8(idx)) + _3847 + 32]] <= 4
                                if mem[mem[(32 * uint8(idx)) + _3847 + 32]] == 4:
                                    require uint8(idx) < mem[_3847]
                                    _9525 = mem[(32 * uint8(idx)) + _3847 + 32]
                                    _9544 = mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 352]]
                                    _9545 = mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96]
                                    mem[mem[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _9545
                                    require ext_code.size(address(_9544))
                                    call address(_9544).withdraw(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _9545
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9588 = mem[mem[_9525 + 352] + 32]
                                    _9589 = mem[_9525 + 96]
                                    mem[mem[64] + 4] = mem[_9525 + 128] - 10
                                    mem[mem[64] + 36] = block.timestamp
                                    require ext_code.size(address(_9588))
                                    call address(_9588).ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
                                       value _9589 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], block.timestamp
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                    else:
                        _9370 = mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 256]]
                        _9371 = mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 256] + 32]
                        _9372 = mem[mem[(32 * uint8(idx)) + _3847 + 32] + 96]
                        _9373 = mem[mem[mem[(32 * uint8(idx)) + _3847 + 32] + 256] + 64]
                        _9374 = mem[64]
                        mem[mem[64]] = 0x64a3bc1500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_9371 + 12 len 20]
                        mem[mem[64] + 132] = mem[_9371 + 44 len 20]
                        mem[mem[64] + 164] = mem[_9371 + 76 len 20]
                        mem[mem[64] + 196] = mem[_9371 + 108 len 20]
                        mem[mem[64] + 228] = mem[_9371 + 128]
                        mem[mem[64] + 260] = mem[_9371 + 160]
                        mem[mem[64] + 292] = mem[_9371 + 192]
                        mem[mem[64] + 324] = mem[_9371 + 224]
                        mem[mem[64] + 356] = mem[_9371 + 256]
                        mem[mem[64] + 388] = mem[_9371 + 288]
                        _9669 = mem[_9371 + 320]
                        mem[mem[64] + 420] = 384
                        _9678 = mem[_9669]
                        mem[mem[64] + 484] = mem[_9669]
                        s = 0
                        while s < _9678:
                            mem[s + mem[64] + 516] = mem[s + _9669 + 32]
                            _9282 = mem[_3847]
                            s = s + 32
                            continue 
                        if ceil32(_9678) <= _9678:
                            _9759 = mem[_9371 + 352]
                            mem[_9374 + 452] = ceil32(_9678) + 416
                            _9761 = mem[_9759]
                            mem[_9374 + ceil32(_9678) + 516] = mem[_9759]
                            s = 0
                            while s < _9761:
                                mem[s + _9374 + ceil32(_9678) + 548] = mem[s + _9759 + 32]
                                _9282 = mem[_3847]
                                s = s + 32
                                continue 
                            if ceil32(_9761) <= _9761:
                                mem[_9374 + 36] = _9372 - 10
                                mem[_9374 + 68] = ceil32(_9678) + ceil32(_9761) + 544
                                _9783 = mem[_9373]
                                mem[_9374 + ceil32(_9678) + ceil32(_9761) + 548] = mem[_9373]
                                s = 0
                                while s < _9783:
                                    mem[s + _9374 + ceil32(_9678) + ceil32(_9761) + 580] = mem[s + _9373 + 32]
                                    _9282 = mem[_3847]
                                    s = s + 32
                                    continue 
                                if ceil32(_9783) > _9783:
                                    mem[_9374 + ceil32(_9678) + ceil32(_9761) + _9783 + 580] = 0
                                require ext_code.size(address(_9370))
                                call address(_9370).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _9374 + ceil32(_9678) + ceil32(_9761) + ceil32(_9783) + -mem[64] + 576]
                            else:
                                mem[_9374 + ceil32(_9678) + _9761 + 548] = 0
                                mem[_9374 + 36] = _9372 - 10
                                mem[_9374 + 68] = ceil32(_9678) + ceil32(_9761) + 544
                                _9785 = mem[_9373]
                                mem[_9374 + ceil32(_9678) + ceil32(_9761) + 548] = mem[_9373]
                                s = 0
                                while s < _9785:
                                    mem[s + _9374 + ceil32(_9678) + ceil32(_9761) + 580] = mem[s + _9373 + 32]
                                    _9282 = mem[_3847]
                                    s = s + 32
                                    continue 
                                if ceil32(_9785) > _9785:
                                    mem[_9374 + ceil32(_9678) + ceil32(_9761) + _9785 + 580] = 0
                                require ext_code.size(address(_9370))
                                call address(_9370).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _9374 + ceil32(_9678) + ceil32(_9761) + ceil32(_9785) + -mem[64] + 576]
                        else:
                            mem[_9374 + _9678 + 516] = 0
                            _9760 = mem[_9371 + 352]
                            mem[_9374 + 452] = ceil32(_9678) + 416
                            _9762 = mem[_9760]
                            mem[_9374 + ceil32(_9678) + 516] = mem[_9760]
                            s = 0
                            while s < _9762:
                                mem[s + _9374 + ceil32(_9678) + 548] = mem[s + _9760 + 32]
                                _9282 = mem[_3847]
                                s = s + 32
                                continue 
                            if ceil32(_9762) <= _9762:
                                mem[_9374 + 36] = _9372 - 10
                                mem[_9374 + 68] = ceil32(_9678) + ceil32(_9762) + 544
                                _9784 = mem[_9373]
                                mem[_9374 + ceil32(_9678) + ceil32(_9762) + 548] = mem[_9373]
                                s = 0
                                while s < _9784:
                                    mem[s + _9374 + ceil32(_9678) + ceil32(_9762) + 580] = mem[s + _9373 + 32]
                                    _9282 = mem[_3847]
                                    s = s + 32
                                    continue 
                                if ceil32(_9784) > _9784:
                                    mem[_9374 + ceil32(_9678) + ceil32(_9762) + _9784 + 580] = 0
                                require ext_code.size(address(_9370))
                                call address(_9370).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _9374 + ceil32(_9678) + ceil32(_9762) + ceil32(_9784) + -mem[64] + 576]
                            else:
                                mem[_9374 + ceil32(_9678) + _9762 + 548] = 0
                                mem[_9374 + 36] = _9372 - 10
                                mem[_9374 + 68] = ceil32(_9678) + ceil32(_9762) + 544
                                _9786 = mem[_9373]
                                mem[_9374 + ceil32(_9678) + ceil32(_9762) + 548] = mem[_9373]
                                s = 0
                                while s < _9786:
                                    mem[s + _9374 + ceil32(_9678) + ceil32(_9762) + 580] = mem[s + _9373 + 32]
                                    _9282 = mem[_3847]
                                    s = s + 32
                                    continue 
                                if ceil32(_9786) > _9786:
                                    mem[_9374 + ceil32(_9678) + ceil32(_9762) + _9786 + 580] = 0
                                require ext_code.size(address(_9370))
                                call address(_9370).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _9374 + ceil32(_9678) + ceil32(_9762) + ceil32(_9786) + -mem[64] + 576]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                _9282 = mem[_3847]
                idx = idx + 1
                continue 
}



}
