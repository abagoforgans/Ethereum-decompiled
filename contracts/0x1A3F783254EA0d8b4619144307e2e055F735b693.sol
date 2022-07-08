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
        _4514 = mem[64]
        require mem[64] + ceil32(cd[(cd[164] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[164] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[164] + cd[s] + 36)]) + 32
        mem[_4514] = cd[(cd[164] + cd[s] + 36)]
        require cd[164] + cd[s] + cd[(cd[164] + cd[s] + 36)] + 68 <= calldata.size
        mem[_4514 + 32 len cd[(cd[164] + cd[s] + 36)]] = call.data[cd[164] + cd[s] + 68 len cd[(cd[164] + cd[s] + 36)]]
        mem[cd[(cd[164] + cd[s] + 36)] + _4514 + 32] = 0
        mem[t] = _4514
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require msg.sender == owner
    _4512 = mem[96]
    _4513 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _4512) + 32
    if not _4512:
        idx = 0
        while uint8(idx) < _4512:
            require uint8(idx) < mem[96]
            if not mem[(32 * uint8(idx)) + 159 len 1]:
                require uint8(idx) < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192]
                _5788 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224]
                _5799 = mem[64]
                mem[64] = mem[64] + 1312
                mem[_5799] = 0
                mem[_5799 + 32] = 0
                mem[_5799 + 64] = 0
                mem[_5799 + 96] = 0
                mem[_5799 + 128] = 0
                mem[_5799 + 160] = 0
                mem[_5799 + 192] = 0
                _5806 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5806] = 0
                mem[_5806 + 32] = 0
                mem[_5799 + 224] = _5806
                _5823 = mem[64]
                mem[64] = mem[64] + 448
                mem[_5823] = 0
                _5832 = mem[64]
                mem[64] = mem[64] + 384
                mem[_5832] = 0
                mem[_5832 + 32] = 0
                mem[_5832 + 64] = 0
                mem[_5832 + 96] = 0
                mem[_5832 + 128] = 0
                mem[_5832 + 160] = 0
                mem[_5832 + 192] = 0
                mem[_5832 + 224] = 0
                mem[_5832 + 256] = 0
                mem[_5832 + 288] = 0
                mem[_5832 + 320] = 96
                mem[_5832 + 352] = 96
                mem[_5823 + 32] = _5832
                mem[_5823 + 64] = 96
                mem[_5799 + 256] = _5823
                _5864 = mem[64]
                mem[64] = mem[64] + 192
                mem[_5864] = 0
                mem[_5864 + 32] = 0
                mem[_5864 + 64] = 0
                mem[_5864 + 96] = 0
                mem[_5864 + 128] = 0
                mem[_5864 + 160] = 0
                mem[_5799 + 288] = _5864
                _5887 = mem[64]
                mem[64] = mem[64] + 128
                mem[_5887] = 0
                mem[_5887 + 32] = 0
                mem[_5887 + 64] = 0
                mem[_5887 + 96] = 0
                mem[_5799 + 320] = _5887
                _5908 = mem[64]
                mem[64] = mem[64] + 128
                mem[_5908] = 0
                mem[_5908 + 32] = 0
                mem[_5908 + 64] = 0
                mem[_5908 + 96] = 0
                mem[_5799 + 352] = _5908
                _5935 = mem[64]
                mem[64] = mem[64] + 128
                mem[_5935] = 0
                mem[_5935 + 32] = 0
                mem[_5935 + 64] = 0
                mem[_5935 + 96] = 0
                mem[_5799 + 384] = _5935
                _5979 = mem[_5788 + 32]
                require ext_code.size(sub_3ec7a073Address)
                staticcall sub_3ec7a073Address.offers(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[_5788 + 32]
                mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6161 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 192
                _6211 = mem[_6161]
                _6429 = mem[_6161 + 64]
                _6596 = mem[64]
                mem[64] = mem[64] + 1312
                mem[_6596] = 0
                mem[_6596 + 32] = 0
                mem[_6596 + 64] = 0
                mem[_6596 + 96] = 0
                mem[_6596 + 128] = 0
                mem[_6596 + 160] = 0
                mem[_6596 + 192] = 0
                _6600 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6600] = 0
                mem[_6600 + 32] = 0
                mem[_6596 + 224] = _6600
                _6607 = mem[64]
                mem[64] = mem[64] + 448
                mem[_6607] = 0
                _6612 = mem[64]
                mem[64] = mem[64] + 384
                mem[_6612] = 0
                mem[_6612 + 32] = 0
                mem[_6612 + 64] = 0
                mem[_6612 + 96] = 0
                mem[_6612 + 128] = 0
                mem[_6612 + 160] = 0
                mem[_6612 + 192] = 0
                mem[_6612 + 224] = 0
                mem[_6612 + 256] = 0
                mem[_6612 + 288] = 0
                mem[_6612 + 320] = 96
                mem[_6612 + 352] = 96
                mem[_6607 + 32] = _6612
                mem[_6607 + 64] = 96
                mem[_6596 + 256] = _6607
                _6629 = mem[64]
                mem[64] = mem[64] + 192
                mem[_6629] = 0
                mem[_6629 + 32] = 0
                mem[_6629 + 64] = 0
                mem[_6629 + 96] = 0
                mem[_6629 + 128] = 0
                mem[_6629 + 160] = 0
                mem[_6596 + 288] = _6629
                _6636 = mem[64]
                mem[64] = mem[64] + 128
                mem[_6636] = 0
                mem[_6636 + 32] = 0
                mem[_6636 + 64] = 0
                mem[_6636 + 96] = 0
                mem[_6596 + 320] = _6636
                _6645 = mem[64]
                mem[64] = mem[64] + 128
                mem[_6645] = 0
                mem[_6645 + 32] = 0
                mem[_6645 + 64] = 0
                mem[_6645 + 96] = 0
                mem[_6596 + 352] = _6645
                _6654 = mem[64]
                mem[64] = mem[64] + 128
                mem[_6654] = 0
                mem[_6654 + 32] = 0
                mem[_6654 + 64] = 0
                mem[_6654 + 96] = 0
                mem[_6596 + 384] = _6654
                if _6429 < 100:
                    require uint8(idx) < mem[_4513]
                mem[_6596] = 0
                mem[_6596 + 160] = _6429
                if not _6211:
                    require _6429 > 0
                    require _6429
                    mem[_6596 + 192] = 0 / _6429
                    _6694 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6694] = sub_3ec7a073Address
                    mem[_6694 + 32] = _5979
                    mem[_6596 + 224] = _6694
                else:
                    require 1000000000 * 10^18 * _6211 / _6211 == 1000000000 * 10^18
                    require _6429 > 0
                    require _6429
                    mem[_6596 + 192] = 1000000000 * 10^18 * _6211 / _6429
                    _6705 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6705] = sub_3ec7a073Address
                    mem[_6705 + 32] = _5979
                    mem[_6596 + 224] = _6705
                require uint8(idx) < mem[_4513]
                mem[(32 * uint8(idx)) + _4513 + 32] = _6596
            else:
                require uint8(idx) < mem[96]
                if mem[(32 * uint8(idx)) + 159 len 1] != 1:
                    require uint8(idx) < mem[96]
                    if mem[(32 * uint8(idx)) + 159 len 1] != 2:
                        require uint8(idx) < mem[96]
                        if mem[(32 * uint8(idx)) + 159 len 1] == 3:
                            require uint8(idx) < mem[(32 * ('cd', 68).length) + 128]
                            _5830 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + 160]
                            require uint8(idx) < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                            _5839 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                            _5863 = mem[64]
                            mem[64] = mem[64] + 1312
                            mem[_5863] = 0
                            mem[_5863 + 32] = 0
                            mem[_5863 + 64] = 0
                            mem[_5863 + 96] = 0
                            mem[_5863 + 128] = 0
                            mem[_5863 + 160] = 0
                            mem[_5863 + 192] = 0
                            _5872 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5872] = 0
                            mem[_5872 + 32] = 0
                            mem[_5863 + 224] = _5872
                            _5899 = mem[64]
                            mem[64] = mem[64] + 448
                            mem[_5899] = 0
                            _5906 = mem[64]
                            mem[64] = mem[64] + 384
                            mem[_5906] = 0
                            mem[_5906 + 32] = 0
                            mem[_5906 + 64] = 0
                            mem[_5906 + 96] = 0
                            mem[_5906 + 128] = 0
                            mem[_5906 + 160] = 0
                            mem[_5906 + 192] = 0
                            mem[_5906 + 224] = 0
                            mem[_5906 + 256] = 0
                            mem[_5906 + 288] = 0
                            mem[_5906 + 320] = 96
                            mem[_5906 + 352] = 96
                            mem[_5899 + 32] = _5906
                            mem[_5899 + 64] = 96
                            mem[_5863 + 256] = _5899
                            _5946 = mem[64]
                            mem[64] = mem[64] + 192
                            mem[_5946] = 0
                            mem[_5946 + 32] = 0
                            mem[_5946 + 64] = 0
                            mem[_5946 + 96] = 0
                            mem[_5946 + 128] = 0
                            mem[_5946 + 160] = 0
                            mem[_5863 + 288] = _5946
                            _5977 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_5977] = 0
                            mem[_5977 + 32] = 0
                            mem[_5977 + 64] = 0
                            mem[_5977 + 96] = 0
                            mem[_5863 + 320] = _5977
                            _6012 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_6012] = 0
                            mem[_6012 + 32] = 0
                            mem[_6012 + 64] = 0
                            mem[_6012 + 96] = 0
                            mem[_5863 + 352] = _6012
                            _6052 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_6052] = 0
                            mem[_6052 + 32] = 0
                            mem[_6052 + 64] = 0
                            mem[_6052 + 96] = 0
                            mem[_5863 + 384] = _6052
                            _6111 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_6111] = 0
                            mem[_6111 + 32] = 0
                            mem[_6111 + 64] = 0
                            mem[_6111 + 96] = 0
                            mem[mem[64] + 4] = address(_5830)
                            require ext_code.size(uniswapAddress)
                            staticcall uniswapAddress.getExchange(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_5830)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6297 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6347 = mem[_6297]
                            mem[_6111] = mem[_6297 + 12 len 20]
                            mem[_6111 + 32] = address(_5839)
                            mem[mem[64] + 4] = address(_6347)
                            require ext_code.size(address(_5830))
                            staticcall address(_5830).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_6347)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6527 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6111 + 64] = mem[_6527]
                            mem[_6111 + 96] = eth.balance(mem[_6111])
                            _6570 = mem[64]
                            mem[64] = mem[64] + 1312
                            mem[_6570] = 0
                            mem[_6570 + 32] = 0
                            mem[_6570 + 64] = 0
                            mem[_6570 + 96] = 0
                            mem[_6570 + 128] = 0
                            mem[_6570 + 160] = 0
                            mem[_6570 + 192] = 0
                            _6576 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6576] = 0
                            mem[_6576 + 32] = 0
                            mem[_6570 + 224] = _6576
                            _6584 = mem[64]
                            mem[64] = mem[64] + 448
                            mem[_6584] = 0
                            _6589 = mem[64]
                            mem[64] = mem[64] + 384
                            mem[_6589] = 0
                            mem[_6589 + 32] = 0
                            mem[_6589 + 64] = 0
                            mem[_6589 + 96] = 0
                            mem[_6589 + 128] = 0
                            mem[_6589 + 160] = 0
                            mem[_6589 + 192] = 0
                            mem[_6589 + 224] = 0
                            mem[_6589 + 256] = 0
                            mem[_6589 + 288] = 0
                            mem[_6589 + 320] = 96
                            mem[_6589 + 352] = 96
                            mem[_6584 + 32] = _6589
                            mem[_6584 + 64] = 96
                            mem[_6570 + 256] = _6584
                            _6598 = mem[64]
                            mem[64] = mem[64] + 192
                            mem[_6598] = 0
                            mem[_6598 + 32] = 0
                            mem[_6598 + 64] = 0
                            mem[_6598 + 96] = 0
                            mem[_6598 + 128] = 0
                            mem[_6598 + 160] = 0
                            mem[_6570 + 288] = _6598
                            _6605 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_6605] = 0
                            mem[_6605 + 32] = 0
                            mem[_6605 + 64] = 0
                            mem[_6605 + 96] = 0
                            mem[_6570 + 320] = _6605
                            _6617 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_6617] = 0
                            mem[_6617 + 32] = 0
                            mem[_6617 + 64] = 0
                            mem[_6617 + 96] = 0
                            mem[_6570 + 352] = _6617
                            _6628 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_6628] = 0
                            mem[_6628 + 32] = 0
                            mem[_6628 + 64] = 0
                            mem[_6628 + 96] = 0
                            mem[_6570 + 384] = _6628
                            mem[_6570] = 3
                            mem[_6570 + 160] = 0x100000000000000000000000000000000
                            mem[_6570 + 320] = _6111
                            require uint8(idx) < mem[_4513]
                            mem[(32 * uint8(idx)) + _4513 + 32] = _6570
                        else:
                            require uint8(idx) < mem[96]
                            if mem[(32 * uint8(idx)) + 159 len 1] == 4:
                                require uint8(idx) < mem[(32 * ('cd', 68).length) + 128]
                                _5848 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + 160]
                                require uint8(idx) < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                                _5862 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                                _5884 = mem[64]
                                mem[64] = mem[64] + 1312
                                mem[_5884] = 0
                                mem[_5884 + 32] = 0
                                mem[_5884 + 64] = 0
                                mem[_5884 + 96] = 0
                                mem[_5884 + 128] = 0
                                mem[_5884 + 160] = 0
                                mem[_5884 + 192] = 0
                                _5898 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5898] = 0
                                mem[_5898 + 32] = 0
                                mem[_5884 + 224] = _5898
                                _5919 = mem[64]
                                mem[64] = mem[64] + 448
                                mem[_5919] = 0
                                _5933 = mem[64]
                                mem[64] = mem[64] + 384
                                mem[_5933] = 0
                                mem[_5933 + 32] = 0
                                mem[_5933 + 64] = 0
                                mem[_5933 + 96] = 0
                                mem[_5933 + 128] = 0
                                mem[_5933 + 160] = 0
                                mem[_5933 + 192] = 0
                                mem[_5933 + 224] = 0
                                mem[_5933 + 256] = 0
                                mem[_5933 + 288] = 0
                                mem[_5933 + 320] = 96
                                mem[_5933 + 352] = 96
                                mem[_5919 + 32] = _5933
                                mem[_5919 + 64] = 96
                                mem[_5884 + 256] = _5919
                                _5976 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_5976] = 0
                                mem[_5976 + 32] = 0
                                mem[_5976 + 64] = 0
                                mem[_5976 + 96] = 0
                                mem[_5976 + 128] = 0
                                mem[_5976 + 160] = 0
                                mem[_5884 + 288] = _5976
                                _6011 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_6011] = 0
                                mem[_6011 + 32] = 0
                                mem[_6011 + 64] = 0
                                mem[_6011 + 96] = 0
                                mem[_5884 + 320] = _6011
                                _6051 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_6051] = 0
                                mem[_6051 + 32] = 0
                                mem[_6051 + 64] = 0
                                mem[_6051 + 96] = 0
                                mem[_5884 + 352] = _6051
                                _6089 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_6089] = 0
                                mem[_6089 + 32] = 0
                                mem[_6089 + 64] = 0
                                mem[_6089 + 96] = 0
                                mem[_5884 + 384] = _6089
                                _6160 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_6160 + 32] = 0
                                mem[_6160 + 64] = 0
                                mem[_6160 + 96] = 0
                                mem[_6160] = address(_5848)
                                mem[mem[64] + 4] = address(_5862)
                                require ext_code.size(uniswapAddress)
                                staticcall uniswapAddress.getExchange(address arg1) with:
                                        gas gas_remaining wei
                                       args address(_5862)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6333 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6378 = mem[_6333]
                                mem[_6160 + 32] = mem[_6333 + 12 len 20]
                                mem[_6160 + 64] = eth.balance(_6378)
                                mem[mem[64] + 4] = address(_6378)
                                require ext_code.size(address(_5862))
                                staticcall address(_5862).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_6378)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6538 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[_6160 + 96] = mem[_6538]
                                _6579 = mem[64]
                                mem[64] = mem[64] + 1312
                                mem[_6579] = 0
                                mem[_6579 + 32] = 0
                                mem[_6579 + 64] = 0
                                mem[_6579 + 96] = 0
                                mem[_6579 + 128] = 0
                                mem[_6579 + 160] = 0
                                mem[_6579 + 192] = 0
                                _6583 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6583] = 0
                                mem[_6583 + 32] = 0
                                mem[_6579 + 224] = _6583
                                _6592 = mem[64]
                                mem[64] = mem[64] + 448
                                mem[_6592] = 0
                                _6594 = mem[64]
                                mem[64] = mem[64] + 384
                                mem[_6594] = 0
                                mem[_6594 + 32] = 0
                                mem[_6594 + 64] = 0
                                mem[_6594 + 96] = 0
                                mem[_6594 + 128] = 0
                                mem[_6594 + 160] = 0
                                mem[_6594 + 192] = 0
                                mem[_6594 + 224] = 0
                                mem[_6594 + 256] = 0
                                mem[_6594 + 288] = 0
                                mem[_6594 + 320] = 96
                                mem[_6594 + 352] = 96
                                mem[_6592 + 32] = _6594
                                mem[_6592 + 64] = 96
                                mem[_6579 + 256] = _6592
                                _6604 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_6604] = 0
                                mem[_6604 + 32] = 0
                                mem[_6604 + 64] = 0
                                mem[_6604 + 96] = 0
                                mem[_6604 + 128] = 0
                                mem[_6604 + 160] = 0
                                mem[_6579 + 288] = _6604
                                _6616 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_6616] = 0
                                mem[_6616 + 32] = 0
                                mem[_6616 + 64] = 0
                                mem[_6616 + 96] = 0
                                mem[_6579 + 320] = _6616
                                _6627 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_6627] = 0
                                mem[_6627 + 32] = 0
                                mem[_6627 + 64] = 0
                                mem[_6627 + 96] = 0
                                mem[_6579 + 352] = _6627
                                _6635 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_6635] = 0
                                mem[_6635 + 32] = 0
                                mem[_6635 + 64] = 0
                                mem[_6635 + 96] = 0
                                mem[_6579 + 384] = _6635
                                mem[_6579] = 4
                                mem[_6579 + 160] = 0x100000000000000000000000000000000
                                mem[_6579 + 352] = _6160
                                require uint8(idx) < mem[_4513]
                                mem[(32 * uint8(idx)) + _4513 + 32] = _6579
                            else:
                                require uint8(idx) < mem[96]
                                if mem[(32 * uint8(idx)) + 159 len 1] == 5:
                                    require uint8(idx) < mem[(32 * ('cd', 68).length) + 128]
                                    _5870 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + 160]
                                    require uint8(idx) < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                                    _5882 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                                    require uint8(idx) < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192]
                                    _5897 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224]
                                    _5918 = mem[64]
                                    mem[64] = mem[64] + 1312
                                    mem[_5918] = 0
                                    mem[_5918 + 32] = 0
                                    mem[_5918 + 64] = 0
                                    mem[_5918 + 96] = 0
                                    mem[_5918 + 128] = 0
                                    mem[_5918 + 160] = 0
                                    mem[_5918 + 192] = 0
                                    _5932 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5932] = 0
                                    mem[_5932 + 32] = 0
                                    mem[_5918 + 224] = _5932
                                    _5961 = mem[64]
                                    mem[64] = mem[64] + 448
                                    mem[_5961] = 0
                                    _5975 = mem[64]
                                    mem[64] = mem[64] + 384
                                    mem[_5975] = 0
                                    mem[_5975 + 32] = 0
                                    mem[_5975 + 64] = 0
                                    mem[_5975 + 96] = 0
                                    mem[_5975 + 128] = 0
                                    mem[_5975 + 160] = 0
                                    mem[_5975 + 192] = 0
                                    mem[_5975 + 224] = 0
                                    mem[_5975 + 256] = 0
                                    mem[_5975 + 288] = 0
                                    mem[_5975 + 320] = 96
                                    mem[_5975 + 352] = 96
                                    mem[_5961 + 32] = _5975
                                    mem[_5961 + 64] = 96
                                    mem[_5918 + 256] = _5961
                                    _6033 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_6033] = 0
                                    mem[_6033 + 32] = 0
                                    mem[_6033 + 64] = 0
                                    mem[_6033 + 96] = 0
                                    mem[_6033 + 128] = 0
                                    mem[_6033 + 160] = 0
                                    mem[_5918 + 288] = _6033
                                    _6065 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_6065] = 0
                                    mem[_6065 + 32] = 0
                                    mem[_6065 + 64] = 0
                                    mem[_6065 + 96] = 0
                                    mem[_5918 + 320] = _6065
                                    _6110 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_6110] = 0
                                    mem[_6110 + 32] = 0
                                    mem[_6110 + 64] = 0
                                    mem[_6110 + 96] = 0
                                    mem[_5918 + 352] = _6110
                                    _6159 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_6159] = 0
                                    mem[_6159 + 32] = 0
                                    mem[_6159 + 64] = 0
                                    mem[_6159 + 96] = 0
                                    mem[_5918 + 384] = _6159
                                    _6225 = mem[_5897 + 32]
                                    _6264 = mem[64]
                                    mem[64] = mem[64] + 1312
                                    mem[_6264] = 0
                                    mem[_6264 + 32] = 0
                                    mem[_6264 + 64] = 0
                                    mem[_6264 + 96] = 0
                                    mem[_6264 + 128] = 0
                                    mem[_6264 + 160] = 0
                                    mem[_6264 + 192] = 0
                                    _6282 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6282] = 0
                                    mem[_6282 + 32] = 0
                                    mem[_6264 + 224] = _6282
                                    _6313 = mem[64]
                                    mem[64] = mem[64] + 448
                                    mem[_6313] = 0
                                    _6332 = mem[64]
                                    mem[64] = mem[64] + 384
                                    mem[_6332] = 0
                                    mem[_6332 + 32] = 0
                                    mem[_6332 + 64] = 0
                                    mem[_6332 + 96] = 0
                                    mem[_6332 + 128] = 0
                                    mem[_6332 + 160] = 0
                                    mem[_6332 + 192] = 0
                                    mem[_6332 + 224] = 0
                                    mem[_6332 + 256] = 0
                                    mem[_6332 + 288] = 0
                                    mem[_6332 + 320] = 96
                                    mem[_6332 + 352] = 96
                                    mem[_6313 + 32] = _6332
                                    mem[_6313 + 64] = 96
                                    mem[_6264 + 256] = _6313
                                    _6377 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_6377] = 0
                                    mem[_6377 + 32] = 0
                                    mem[_6377 + 64] = 0
                                    mem[_6377 + 96] = 0
                                    mem[_6377 + 128] = 0
                                    mem[_6377 + 160] = 0
                                    mem[_6264 + 288] = _6377
                                    _6409 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_6409] = 0
                                    mem[_6409 + 32] = 0
                                    mem[_6409 + 64] = 0
                                    mem[_6409 + 96] = 0
                                    mem[_6264 + 320] = _6409
                                    _6444 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_6444] = 0
                                    mem[_6444 + 32] = 0
                                    mem[_6444 + 64] = 0
                                    mem[_6444 + 96] = 0
                                    mem[_6264 + 352] = _6444
                                    _6480 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_6480] = 0
                                    mem[_6480 + 32] = 0
                                    mem[_6480 + 64] = 0
                                    mem[_6480 + 96] = 0
                                    mem[_6264 + 384] = _6480
                                    mem[_6264] = 5
                                    mem[_6264 + 32] = address(_5870)
                                    mem[_6264 + 64] = address(_5882)
                                    mem[_6264 + 160] = 0x100000000000000000000000000000000
                                    _6493 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_6493] = Mask(160, 96, _6225) >> 96
                                    mem[mem[64] + 4] = Mask(160, 96, _6225) >> 96
                                    require ext_code.size(address(_5870))
                                    staticcall address(_5870).0x70a08231 with:
                                            gas gas_remaining wei
                                           args Mask(160, 96, _6225)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6542 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[_6493 + 32] = mem[_6542]
                                    mem[mem[64] + 4] = Mask(160, 96, _6225) >> 96
                                    require ext_code.size(address(_5882))
                                    staticcall address(_5882).0x70a08231 with:
                                            gas gas_remaining wei
                                           args Mask(160, 96, _6225)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6621 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[_6493 + 64] = mem[_6621]
                                    require ext_code.size(Mask(160, 96, _6225) >> 96)
                                    staticcall Mask(160, 96, _6225) >> 96.conversionFee() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6663 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[_6493 + 96] = mem[_6663 + 28 len 4]
                                    mem[_6264 + 384] = _6493
                                    require uint8(idx) < mem[_4513]
                                    mem[(32 * uint8(idx)) + _4513 + 32] = _6264
                    else:
                        require uint8(idx) < mem[(32 * ('cd', 68).length) + 128]
                        _5811 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + 160]
                        require uint8(idx) < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                        _5821 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                        _5840 = mem[64]
                        mem[64] = mem[64] + 1312
                        mem[_5840] = 0
                        mem[_5840 + 32] = 0
                        mem[_5840 + 64] = 0
                        mem[_5840 + 96] = 0
                        mem[_5840 + 128] = 0
                        mem[_5840 + 160] = 0
                        mem[_5840 + 192] = 0
                        _5850 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5850] = 0
                        mem[_5850 + 32] = 0
                        mem[_5840 + 224] = _5850
                        _5873 = mem[64]
                        mem[64] = mem[64] + 448
                        mem[_5873] = 0
                        _5885 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_5885] = 0
                        mem[_5885 + 32] = 0
                        mem[_5885 + 64] = 0
                        mem[_5885 + 96] = 0
                        mem[_5885 + 128] = 0
                        mem[_5885 + 160] = 0
                        mem[_5885 + 192] = 0
                        mem[_5885 + 224] = 0
                        mem[_5885 + 256] = 0
                        mem[_5885 + 288] = 0
                        mem[_5885 + 320] = 96
                        mem[_5885 + 352] = 96
                        mem[_5873 + 32] = _5885
                        mem[_5873 + 64] = 96
                        mem[_5840 + 256] = _5873
                        _5920 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_5920] = 0
                        mem[_5920 + 32] = 0
                        mem[_5920 + 64] = 0
                        mem[_5920 + 96] = 0
                        mem[_5920 + 128] = 0
                        mem[_5920 + 160] = 0
                        mem[_5840 + 288] = _5920
                        _5947 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_5947] = 0
                        mem[_5947 + 32] = 0
                        mem[_5947 + 64] = 0
                        mem[_5947 + 96] = 0
                        mem[_5840 + 320] = _5947
                        _5978 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_5978] = 0
                        mem[_5978 + 32] = 0
                        mem[_5978 + 64] = 0
                        mem[_5978 + 96] = 0
                        mem[_5840 + 352] = _5978
                        _6013 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_6013] = 0
                        mem[_6013 + 32] = 0
                        mem[_6013 + 64] = 0
                        mem[_6013 + 96] = 0
                        mem[_5840 + 384] = _6013
                        _6066 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_6066] = 0
                        mem[_6066 + 32] = 0
                        mem[_6066 + 64] = 0
                        mem[_6066 + 96] = 0
                        mem[_6066 + 128] = 0
                        mem[_6066 + 160] = 0
                        mem[mem[64] + 4] = address(_5811)
                        require ext_code.size(uniswapAddress)
                        staticcall uniswapAddress.getExchange(address arg1) with:
                                gas gas_remaining wei
                               args address(_5811)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6266 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_6066] = mem[_6266 + 12 len 20]
                        mem[mem[64] + 4] = address(_5821)
                        require ext_code.size(uniswapAddress)
                        staticcall uniswapAddress.getExchange(address arg1) with:
                                gas gas_remaining wei
                               args address(_5821)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6520 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_6066 + 32] = mem[_6520 + 12 len 20]
                        _6567 = mem[_6066]
                        mem[mem[64] + 4] = mem[_6066 + 12 len 20]
                        require ext_code.size(address(_5811))
                        staticcall address(_5811).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_6567)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6606 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_6066 + 64] = mem[_6606]
                        mem[_6066 + 96] = eth.balance(mem[_6066])
                        _6643 = mem[_6066 + 32]
                        mem[_6066 + 128] = eth.balance(mem[_6066 + 32])
                        mem[mem[64] + 4] = mem[_6066 + 44 len 20]
                        require ext_code.size(address(_5821))
                        staticcall address(_5821).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_6643)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6679 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_6066 + 160] = mem[_6679]
                        _6720 = mem[64]
                        mem[64] = mem[64] + 1312
                        mem[_6720] = 0
                        mem[_6720 + 32] = 0
                        mem[_6720 + 64] = 0
                        mem[_6720 + 96] = 0
                        mem[_6720 + 128] = 0
                        mem[_6720 + 160] = 0
                        mem[_6720 + 192] = 0
                        _6728 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6728] = 0
                        mem[_6728 + 32] = 0
                        mem[_6720 + 224] = _6728
                        _6734 = mem[64]
                        mem[64] = mem[64] + 448
                        mem[_6734] = 0
                        _6737 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_6737] = 0
                        mem[_6737 + 32] = 0
                        mem[_6737 + 64] = 0
                        mem[_6737 + 96] = 0
                        mem[_6737 + 128] = 0
                        mem[_6737 + 160] = 0
                        mem[_6737 + 192] = 0
                        mem[_6737 + 224] = 0
                        mem[_6737 + 256] = 0
                        mem[_6737 + 288] = 0
                        mem[_6737 + 320] = 96
                        mem[_6737 + 352] = 96
                        mem[_6734 + 32] = _6737
                        mem[_6734 + 64] = 96
                        mem[_6720 + 256] = _6734
                        _6744 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_6744] = 0
                        mem[_6744 + 32] = 0
                        mem[_6744 + 64] = 0
                        mem[_6744 + 96] = 0
                        mem[_6744 + 128] = 0
                        mem[_6744 + 160] = 0
                        mem[_6720 + 288] = _6744
                        _6755 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_6755] = 0
                        mem[_6755 + 32] = 0
                        mem[_6755 + 64] = 0
                        mem[_6755 + 96] = 0
                        mem[_6720 + 320] = _6755
                        _6762 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_6762] = 0
                        mem[_6762 + 32] = 0
                        mem[_6762 + 64] = 0
                        mem[_6762 + 96] = 0
                        mem[_6720 + 352] = _6762
                        _6766 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_6766] = 0
                        mem[_6766 + 32] = 0
                        mem[_6766 + 64] = 0
                        mem[_6766 + 96] = 0
                        mem[_6720 + 384] = _6766
                        mem[_6720] = 2
                        mem[_6720 + 64] = address(_5821)
                        mem[_6720 + 160] = 0x100000000000000000000000000000000
                        mem[_6720 + 288] = _6066
                        require uint8(idx) < mem[_4513]
                        mem[(32 * uint8(idx)) + _4513 + 32] = _6720
                else:
                    require uint8(idx) < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192]
                    _5798 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224]
                    _5813 = mem[64]
                    mem[64] = mem[64] + 1312
                    mem[_5813] = 0
                    mem[_5813 + 32] = 0
                    mem[_5813 + 64] = 0
                    mem[_5813 + 96] = 0
                    mem[_5813 + 128] = 0
                    mem[_5813 + 160] = 0
                    mem[_5813 + 192] = 0
                    _5822 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5822] = 0
                    mem[_5822 + 32] = 0
                    mem[_5813 + 224] = _5822
                    _5841 = mem[64]
                    mem[64] = mem[64] + 448
                    mem[_5841] = 0
                    _5851 = mem[64]
                    mem[64] = mem[64] + 384
                    mem[_5851] = 0
                    mem[_5851 + 32] = 0
                    mem[_5851 + 64] = 0
                    mem[_5851 + 96] = 0
                    mem[_5851 + 128] = 0
                    mem[_5851 + 160] = 0
                    mem[_5851 + 192] = 0
                    mem[_5851 + 224] = 0
                    mem[_5851 + 256] = 0
                    mem[_5851 + 288] = 0
                    mem[_5851 + 320] = 96
                    mem[_5851 + 352] = 96
                    mem[_5841 + 32] = _5851
                    mem[_5841 + 64] = 96
                    mem[_5813 + 256] = _5841
                    _5886 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_5886] = 0
                    mem[_5886 + 32] = 0
                    mem[_5886 + 64] = 0
                    mem[_5886 + 96] = 0
                    mem[_5886 + 128] = 0
                    mem[_5886 + 160] = 0
                    mem[_5813 + 288] = _5886
                    _5907 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_5907] = 0
                    mem[_5907 + 32] = 0
                    mem[_5907 + 64] = 0
                    mem[_5907 + 96] = 0
                    mem[_5813 + 320] = _5907
                    _5934 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_5934] = 0
                    mem[_5934 + 32] = 0
                    mem[_5934 + 64] = 0
                    mem[_5934 + 96] = 0
                    mem[_5813 + 352] = _5934
                    _5962 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_5962] = 0
                    mem[_5962 + 32] = 0
                    mem[_5962 + 64] = 0
                    mem[_5962 + 96] = 0
                    mem[_5813 + 384] = _5962
                    _6014 = mem[64]
                    mem[64] = mem[64] + 384
                    mem[_6014] = 0
                    mem[_6014 + 32] = 0
                    mem[_6014 + 64] = 0
                    mem[_6014 + 96] = 0
                    mem[_6014 + 128] = 0
                    mem[_6014 + 160] = 0
                    mem[_6014 + 192] = 0
                    mem[_6014 + 224] = 0
                    mem[_6014 + 256] = 0
                    mem[_6014 + 288] = 0
                    mem[_6014 + 320] = 96
                    mem[_6014 + 352] = 96
                    _6067 = mem[64]
                    mem[64] = mem[64] + 384
                    mem[_6067] = 0
                    mem[_6067 + 32] = 0
                    mem[_6067 + 64] = 0
                    mem[_6067 + 96] = 0
                    mem[_6067 + 128] = 0
                    mem[_6067 + 160] = 0
                    mem[_6067 + 192] = 0
                    mem[_6067 + 224] = 0
                    mem[_6067 + 256] = 0
                    mem[_6067 + 288] = 0
                    mem[_6067 + 320] = 96
                    mem[_6067 + 352] = 96
                    _6112 = mem[64]
                    mem[64] = mem[64] + 384
                    mem[_6112] = 0
                    mem[_6112 + 32] = 0
                    mem[_6112 + 64] = 0
                    mem[_6112 + 96] = 0
                    mem[_6112 + 128] = 0
                    mem[_6112 + 160] = 0
                    mem[_6112 + 192] = 0
                    mem[_6112 + 224] = 0
                    mem[_6112 + 256] = 0
                    mem[_6112 + 288] = 0
                    mem[_6112 + 320] = 96
                    mem[_6112 + 352] = 96
                    mem[_6112] = mem[_5798 + 32 len 20]
                    mem[_6112 + 32] = mem[_5798 + 52 len 20]
                    mem[_6112 + 64] = mem[_5798 + 72 len 20]
                    mem[_6112 + 96] = mem[_5798 + 92 len 20]
                    mem[_6112 + 128] = mem[_5798 + 112]
                    mem[_6112 + 160] = mem[_5798 + 144]
                    mem[_6112 + 192] = mem[_5798 + 176]
                    mem[_6112 + 224] = mem[_5798 + 208]
                    mem[_6112 + 256] = mem[_5798 + 240]
                    mem[_6112 + 288] = mem[_5798 + 272]
                    _6138 = mem[64]
                    mem[64] = mem[64] + 68
                    mem[_6138] = 36
                    mem[_6138 + 32] = mem[_5798 + 304]
                    mem[_6138 + 64] = mem[_5798 + 336]
                    mem[_6112 + 320] = _6138
                    _6141 = mem[64]
                    mem[64] = mem[64] + 68
                    mem[_6141] = 36
                    mem[_6141 + 32] = mem[_5798 + 340]
                    mem[_6141 + 64] = mem[_5798 + 372]
                    mem[_6112 + 352] = _6141
                    _6174 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_6174] = 0
                    mem[_6174 + 32] = 0
                    mem[_6174 + 64] = 0
                    mem[mem[64]] = 0xc75e0a8100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_6112 + 12 len 20]
                    mem[mem[64] + 68] = mem[_6112 + 44 len 20]
                    mem[mem[64] + 100] = mem[_6112 + 76 len 20]
                    mem[mem[64] + 132] = mem[_6112 + 108 len 20]
                    mem[mem[64] + 164] = mem[_6112 + 128]
                    mem[mem[64] + 196] = mem[_6112 + 160]
                    mem[mem[64] + 228] = mem[_6112 + 192]
                    mem[mem[64] + 260] = mem[_6112 + 224]
                    mem[mem[64] + 292] = mem[_6112 + 256]
                    mem[mem[64] + 324] = mem[_6112 + 288]
                    mem[mem[64] + 356] = 384
                    mem[mem[64] + 420] = 36
                    s = 0
                    while s < 36:
                        mem[s + mem[64] + 452] = mem[s + _6138 + 32]
                        s = s + 32
                        continue 
                    mem[mem[64] + 488] = 0
                    _7073 = mem[_6112 + 352]
                    mem[mem[64] + 388] = 480
                    _7091 = mem[_7073]
                    mem[mem[64] + 516] = mem[_7073]
                    s = 0
                    while s < _7091:
                        mem[s + mem[64] + 548] = mem[s + _7073 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_7091) <= _7091:
                        require ext_code.size(sub_560addeaAddress)
                        staticcall sub_560addeaAddress.getOrderInfo(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12) with:
                                gas gas_remaining wei
                               args 32, mem[mem[64] + 36 len 320], 384, 480, 36, mem[mem[64] + 452 len 36], 0, mem[mem[64] + 516 len ceil32(_7091) + 32]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8476 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _8588 = mem[64]
                        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                        mem[64] = mem[64] + 96
                        mem[_8588] = mem[_8476 + 31 len 1]
                        mem[_8588 + 32] = mem[_8476 + 32]
                        mem[_8588 + 64] = mem[_8476 + 64]
                        _8870 = mem[64]
                        mem[64] = mem[64] + 1312
                        mem[_8870] = 0
                        mem[_8870 + 32] = 0
                        mem[_8870 + 64] = 0
                        mem[_8870 + 96] = 0
                        mem[_8870 + 128] = 0
                        mem[_8870 + 160] = 0
                        mem[_8870 + 192] = 0
                        _8888 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8888] = 0
                        mem[_8888 + 32] = 0
                        mem[_8870 + 224] = _8888
                        _8927 = mem[64]
                        mem[64] = mem[64] + 448
                        mem[_8927] = 0
                        _8946 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_8946] = 0
                        mem[_8946 + 32] = 0
                        mem[_8946 + 64] = 0
                        mem[_8946 + 96] = 0
                        mem[_8946 + 128] = 0
                        mem[_8946 + 160] = 0
                        mem[_8946 + 192] = 0
                        mem[_8946 + 224] = 0
                        mem[_8946 + 256] = 0
                        mem[_8946 + 288] = 0
                        mem[_8946 + 320] = 96
                        mem[_8946 + 352] = 96
                        mem[_8927 + 32] = _8946
                        mem[_8927 + 64] = 96
                        mem[_8870 + 256] = _8927
                        _8994 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_8994] = 0
                        mem[_8994 + 32] = 0
                        mem[_8994 + 64] = 0
                        mem[_8994 + 96] = 0
                        mem[_8994 + 128] = 0
                        mem[_8994 + 160] = 0
                        mem[_8870 + 288] = _8994
                        _9022 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_9022] = 0
                        mem[_9022 + 32] = 0
                        mem[_9022 + 64] = 0
                        mem[_9022 + 96] = 0
                        mem[_8870 + 320] = _9022
                        _9057 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_9057] = 0
                        mem[_9057 + 32] = 0
                        mem[_9057 + 64] = 0
                        mem[_9057 + 96] = 0
                        mem[_8870 + 352] = _9057
                        _9093 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_9093] = 0
                        mem[_9093 + 32] = 0
                        mem[_9093 + 64] = 0
                        mem[_9093 + 96] = 0
                        mem[_8870 + 384] = _9093
                        if mem[_8588 + 31 len 1] != 3:
                            require uint8(idx) < mem[_4513]
                        mem[_8870] = 1
                        mem[_8870 + 160] = mem[_6112 + 160] - mem[_8588 + 64]
                        if not mem[_6112 + 128]:
                            require mem[_6112 + 160] > 0
                            require mem[_6112 + 160]
                            mem[_8870 + 192] = 0 / mem[_6112 + 160]
                            _9167 = mem[_5798 + 376]
                            _9168 = mem[64]
                            mem[64] = mem[64] + mem[_5798 + 376] + 32
                            mem[_9168] = _9167
                            s = 0
                            while s < _9167 + 32:
                                mem[s + _9168 + 32] = mem[_5798 + s + 408]
                                s = s + 32
                                continue 
                            _9510 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_9510] = sub_560addeaAddress
                            mem[_9510 + 32] = _6112
                            mem[_9510 + 64] = _9168
                            mem[_8870 + 256] = _9510
                        else:
                            require 1000000000 * 10^18 * mem[_6112 + 128] / mem[_6112 + 128] == 1000000000 * 10^18
                            require mem[_6112 + 160] > 0
                            require mem[_6112 + 160]
                            mem[_8870 + 192] = 1000000000 * 10^18 * mem[_6112 + 128] / mem[_6112 + 160]
                            _9180 = mem[_5798 + 376]
                            _9181 = mem[64]
                            mem[64] = mem[64] + mem[_5798 + 376] + 32
                            mem[_9181] = _9180
                            s = 0
                            while s < _9180 + 32:
                                mem[s + _9181 + 32] = mem[_5798 + s + 408]
                                s = s + 32
                                continue 
                            _9509 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_9509] = sub_560addeaAddress
                            mem[_9509 + 32] = _6112
                            mem[_9509 + 64] = _9181
                            mem[_8870 + 256] = _9509
                        require uint8(idx) < mem[_4513]
                        mem[(32 * uint8(idx)) + _4513 + 32] = _8870
                    else:
                        mem[mem[64] + _7091 + 548] = 0
                        require ext_code.size(sub_560addeaAddress)
                        staticcall sub_560addeaAddress.getOrderInfo(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12) with:
                                gas gas_remaining wei
                               args 32, mem[mem[64] + 36 len 320], 384, 480, 36, mem[mem[64] + 452 len 36], 0, mem[mem[64] + 516 len ceil32(_7091) + 32]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8494 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _8611 = mem[64]
                        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                        mem[64] = mem[64] + 96
                        mem[_8611] = mem[_8494 + 31 len 1]
                        mem[_8611 + 32] = mem[_8494 + 32]
                        mem[_8611 + 64] = mem[_8494 + 64]
                        _8889 = mem[64]
                        mem[64] = mem[64] + 1312
                        mem[_8889] = 0
                        mem[_8889 + 32] = 0
                        mem[_8889 + 64] = 0
                        mem[_8889 + 96] = 0
                        mem[_8889 + 128] = 0
                        mem[_8889 + 160] = 0
                        mem[_8889 + 192] = 0
                        _8905 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8905] = 0
                        mem[_8905 + 32] = 0
                        mem[_8889 + 224] = _8905
                        _8947 = mem[64]
                        mem[64] = mem[64] + 448
                        mem[_8947] = 0
                        _8962 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_8962] = 0
                        mem[_8962 + 32] = 0
                        mem[_8962 + 64] = 0
                        mem[_8962 + 96] = 0
                        mem[_8962 + 128] = 0
                        mem[_8962 + 160] = 0
                        mem[_8962 + 192] = 0
                        mem[_8962 + 224] = 0
                        mem[_8962 + 256] = 0
                        mem[_8962 + 288] = 0
                        mem[_8962 + 320] = 96
                        mem[_8962 + 352] = 96
                        mem[_8947 + 32] = _8962
                        mem[_8947 + 64] = 96
                        mem[_8889 + 256] = _8947
                        _9011 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_9011] = 0
                        mem[_9011 + 32] = 0
                        mem[_9011 + 64] = 0
                        mem[_9011 + 96] = 0
                        mem[_9011 + 128] = 0
                        mem[_9011 + 160] = 0
                        mem[_8889 + 288] = _9011
                        _9040 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_9040] = 0
                        mem[_9040 + 32] = 0
                        mem[_9040 + 64] = 0
                        mem[_9040 + 96] = 0
                        mem[_8889 + 320] = _9040
                        _9081 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_9081] = 0
                        mem[_9081 + 32] = 0
                        mem[_9081 + 64] = 0
                        mem[_9081 + 96] = 0
                        mem[_8889 + 352] = _9081
                        _9098 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_9098] = 0
                        mem[_9098 + 32] = 0
                        mem[_9098 + 64] = 0
                        mem[_9098 + 96] = 0
                        mem[_8889 + 384] = _9098
                        if mem[_8611 + 31 len 1] != 3:
                            require uint8(idx) < mem[_4513]
                        mem[_8889] = 1
                        mem[_8889 + 160] = mem[_6112 + 160] - mem[_8611 + 64]
                        if not mem[_6112 + 128]:
                            require mem[_6112 + 160] > 0
                            require mem[_6112 + 160]
                            mem[_8889 + 192] = 0 / mem[_6112 + 160]
                            _9171 = mem[_5798 + 376]
                            _9172 = mem[64]
                            mem[64] = mem[64] + mem[_5798 + 376] + 32
                            mem[_9172] = _9171
                            s = 0
                            while s < _9171 + 32:
                                mem[s + _9172 + 32] = mem[_5798 + s + 408]
                                s = s + 32
                                continue 
                            _9512 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_9512] = sub_560addeaAddress
                            mem[_9512 + 32] = _6112
                            mem[_9512 + 64] = _9172
                            mem[_8889 + 256] = _9512
                        else:
                            require 1000000000 * 10^18 * mem[_6112 + 128] / mem[_6112 + 128] == 1000000000 * 10^18
                            require mem[_6112 + 160] > 0
                            require mem[_6112 + 160]
                            mem[_8889 + 192] = 1000000000 * 10^18 * mem[_6112 + 128] / mem[_6112 + 160]
                            _9194 = mem[_5798 + 376]
                            _9195 = mem[64]
                            mem[64] = mem[64] + mem[_5798 + 376] + 32
                            mem[_9195] = _9194
                            s = 0
                            while s < _9194 + 32:
                                mem[s + _9195 + 32] = mem[_5798 + s + 408]
                                s = s + 32
                                continue 
                            _9511 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_9511] = sub_560addeaAddress
                            mem[_9511 + 32] = _6112
                            mem[_9511 + 64] = _9195
                            mem[_8889 + 256] = _9511
                        require uint8(idx) < mem[_4513]
                        mem[(32 * uint8(idx)) + _4513 + 32] = _8889
            idx = idx + 1
            continue 
        _7034 = mem[_4513]
        idx = 0
        while uint8(idx) < _7034:
            if not uint8(idx):
                require 0 < mem[_4513]
                mem[mem[_4513 + 32] + 96] = cd[36]
            else:
                require uint8(idx - 1) < mem[_4513]
                require uint8(idx) < mem[_4513]
                mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] = mem[mem[(32 * uint8(idx - 1)) + _4513 + 32] + 128]
            require uint8(idx) < mem[_4513]
            require uint8(idx) < mem[_4513]
            require uint8(idx) < mem[_4513]
            if mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] > mem[mem[(32 * uint8(idx)) + _4513 + 32] + 160]:
                require uint8(idx) < mem[_4513]
                mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 160]
                s = idx - 1
                while ('signextend', 0, ('var', 1)) >= 0:
                    require uint8(s + 1) < mem[_4513]
                    require uint8(s) < mem[_4513]
                    mem[mem[(32 * uint8(s)) + _4513 + 32] + 128] = mem[mem[(32 * uint8(s + 1)) + _4513 + 32] + 96]
                    require uint8(s) < mem[_4513]
                    require mem[mem[(32 * uint8(s)) + _4513 + 32]] <= 5
                    require uint8(s) < mem[_4513]
                    if not mem[mem[(32 * uint8(s)) + _4513 + 32]]:
                        if not mem[mem[(32 * uint8(s)) + _4513 + 32] + 128]:
                            require mem[mem[(32 * uint8(s)) + _4513 + 32] + 192] > 0
                            require mem[mem[(32 * uint8(s)) + _4513 + 32] + 192]
                            mem[mem[(32 * uint8(s)) + _4513 + 32] + 96] = 0 / mem[mem[(32 * uint8(s)) + _4513 + 32] + 192]
                        else:
                            require 1000000000 * 10^18 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128] / mem[mem[(32 * uint8(s)) + _4513 + 32] + 128] == 1000000000 * 10^18
                            require mem[mem[(32 * uint8(s)) + _4513 + 32] + 192] > 0
                            require mem[mem[(32 * uint8(s)) + _4513 + 32] + 192]
                            mem[mem[(32 * uint8(s)) + _4513 + 32] + 96] = 1000000000 * 10^18 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128] / mem[mem[(32 * uint8(s)) + _4513 + 32] + 192]
                    else:
                        require mem[mem[(32 * uint8(s)) + _4513 + 32]] <= 5
                        require uint8(s) < mem[_4513]
                        if mem[mem[(32 * uint8(s)) + _4513 + 32]] == 1:
                            if not mem[mem[(32 * uint8(s)) + _4513 + 32] + 128]:
                                require mem[mem[(32 * uint8(s)) + _4513 + 32] + 192] > 0
                                require mem[mem[(32 * uint8(s)) + _4513 + 32] + 192]
                                mem[mem[(32 * uint8(s)) + _4513 + 32] + 96] = 0 / mem[mem[(32 * uint8(s)) + _4513 + 32] + 192]
                            else:
                                require 1000000000 * 10^18 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128] / mem[mem[(32 * uint8(s)) + _4513 + 32] + 128] == 1000000000 * 10^18
                                require mem[mem[(32 * uint8(s)) + _4513 + 32] + 192] > 0
                                require mem[mem[(32 * uint8(s)) + _4513 + 32] + 192]
                                mem[mem[(32 * uint8(s)) + _4513 + 32] + 96] = 1000000000 * 10^18 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128] / mem[mem[(32 * uint8(s)) + _4513 + 32] + 192]
                        else:
                            require mem[mem[(32 * uint8(s)) + _4513 + 32]] <= 5
                            require uint8(s) < mem[_4513]
                            if mem[mem[(32 * uint8(s)) + _4513 + 32]] == 2:
                                require (997 * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 288] + 160]) - (997 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128])
                                require (997 * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 288] + 96]) - (997 * 1000 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128] * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 288] + 128] / (997 * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 288] + 160]) - (997 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128]))
                                mem[mem[(32 * uint8(s)) + _4513 + 32] + 96] = 1000 * 1000 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128] * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 288] + 128] / (997 * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 288] + 160]) - (997 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128]) * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 288] + 64] / (997 * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 288] + 96]) - (997 * 1000 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128] * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 288] + 128] / (997 * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 288] + 160]) - (997 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128]))
                            else:
                                require mem[mem[(32 * uint8(s)) + _4513 + 32]] <= 5
                                require uint8(s) < mem[_4513]
                                if mem[mem[(32 * uint8(s)) + _4513 + 32]] == 3:
                                    require (997 * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 320] + 96]) - (997 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128])
                                    mem[mem[(32 * uint8(s)) + _4513 + 32] + 96] = 1000 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128] * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 320] + 64] / (997 * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 320] + 96]) - (997 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128])
                                else:
                                    require mem[mem[(32 * uint8(s)) + _4513 + 32]] <= 5
                                    require uint8(s) < mem[_4513]
                                    if mem[mem[(32 * uint8(s)) + _4513 + 32]] == 4:
                                        require (997 * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 352] + 96]) - (997 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128])
                                        mem[mem[(32 * uint8(s)) + _4513 + 32] + 96] = 1000 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128] * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 352] + 64] / (997 * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 352] + 96]) - (997 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128])
                                    else:
                                        require mem[mem[(32 * uint8(s)) + _4513 + 32]] <= 5
                                        if mem[mem[(32 * uint8(s)) + _4513 + 32]] == 5:
                                            require uint8(s) < mem[_4513]
                                            require (mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 384] + 64] * (-mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 384] + 96] + 10^6)^2) - (10^12 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128])
                                            mem[mem[(32 * uint8(s)) + _4513 + 32] + 96] = 10^12 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128] * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 384] + 32] / (mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 384] + 64] * (-mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 384] + 96] + 10^6)^2) - (10^12 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128])
                    _7034 = mem[_4513]
                    s = s - 1
                    continue 
            require mem[mem[(32 * uint8(idx)) + _4513 + 32]] <= 5
            require uint8(idx) < mem[_4513]
            if not mem[mem[(32 * uint8(idx)) + _4513 + 32]]:
                if not mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96]:
                    mem[mem[(32 * uint8(idx)) + _4513 + 32] + 128] = 0
                else:
                    require mem[mem[(32 * uint8(idx)) + _4513 + 32] + 192] * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] / mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] == mem[mem[(32 * uint8(idx)) + _4513 + 32] + 192]
                    mem[mem[(32 * uint8(idx)) + _4513 + 32] + 128] = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 192] * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] / 1000000000 * 10^18
            else:
                require mem[mem[(32 * uint8(idx)) + _4513 + 32]] <= 5
                require uint8(idx) < mem[_4513]
                if mem[mem[(32 * uint8(idx)) + _4513 + 32]] == 1:
                    if not mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96]:
                        mem[mem[(32 * uint8(idx)) + _4513 + 32] + 128] = 0
                    else:
                        require mem[mem[(32 * uint8(idx)) + _4513 + 32] + 192] * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] / mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] == mem[mem[(32 * uint8(idx)) + _4513 + 32] + 192]
                        mem[mem[(32 * uint8(idx)) + _4513 + 32] + 128] = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 192] * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] / 1000000000 * 10^18
                else:
                    require mem[mem[(32 * uint8(idx)) + _4513 + 32]] <= 5
                    require uint8(idx) < mem[_4513]
                    if mem[mem[(32 * uint8(idx)) + _4513 + 32]] == 2:
                        require (1000 * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 288] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96])
                        require (1000 * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 288] + 128]) + (997 * 997 * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 288] + 96] / (1000 * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 288] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96]))
                        mem[mem[(32 * uint8(idx)) + _4513 + 32] + 128] = 997 * 997 * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 288] + 96] / (1000 * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 288] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96]) * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 288] + 160] / (1000 * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 288] + 128]) + (997 * 997 * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 288] + 96] / (1000 * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 288] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96]))
                    else:
                        require mem[mem[(32 * uint8(idx)) + _4513 + 32]] <= 5
                        require uint8(idx) < mem[_4513]
                        if mem[mem[(32 * uint8(idx)) + _4513 + 32]] == 3:
                            require (1000 * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 320] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96])
                            mem[mem[(32 * uint8(idx)) + _4513 + 32] + 128] = 997 * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 320] + 96] / (1000 * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 320] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96])
                        else:
                            require mem[mem[(32 * uint8(idx)) + _4513 + 32]] <= 5
                            require uint8(idx) < mem[_4513]
                            if mem[mem[(32 * uint8(idx)) + _4513 + 32]] == 4:
                                require (1000 * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 352] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96])
                                mem[mem[(32 * uint8(idx)) + _4513 + 32] + 128] = 997 * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 352] + 96] / (1000 * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 352] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96])
                            else:
                                require mem[mem[(32 * uint8(idx)) + _4513 + 32]] <= 5
                                if mem[mem[(32 * uint8(idx)) + _4513 + 32]] == 5:
                                    require uint8(idx) < mem[_4513]
                                    require mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 384] + 32] + mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96]
                                    mem[mem[(32 * uint8(idx)) + _4513 + 32] + 128] = mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 384] + 64] * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] / mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 384] + 32] + mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] * (-mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 384] + 96] + 10^6)^2 / 10^12
            _7034 = mem[_4513]
            idx = idx + 1
            continue 
        require 0 < mem[_4513]
        require mem[_4513] - 1 < mem[_4513]
        if mem[mem[(32 * mem[_4513] - 1) + _4513 + 32] + 128] - mem[mem[_4513 + 32] + 96] >= cd[4]:
            _8350 = mem[_4513]
            idx = 0
            while uint8(idx) < _8350:
                require uint8(idx) < mem[_4513]
                require mem[mem[(32 * uint8(idx)) + _4513 + 32]] <= 5
                require uint8(idx) < mem[_4513]
                if not mem[mem[(32 * uint8(idx)) + _4513 + 32]]:
                    _8391 = mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 224]]
                    _8392 = mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 224] + 32]
                    _8393 = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 128]
                    mem[mem[64]] = 'I`dU'
                    mem[mem[64] + 4] = _8392
                    mem[mem[64] + 36] = uint128(_8393)
                    require ext_code.size(address(_8391))
                    call address(_8391).'I`dU' with:
                         gas gas_remaining wei
                        args _8392, uint128(_8393)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require mem[mem[(32 * uint8(idx)) + _4513 + 32]] <= 5
                    require uint8(idx) < mem[_4513]
                    if mem[mem[(32 * uint8(idx)) + _4513 + 32]] != 1:
                        require mem[mem[(32 * uint8(idx)) + _4513 + 32]] <= 5
                        require uint8(idx) < mem[_4513]
                        if mem[mem[(32 * uint8(idx)) + _4513 + 32]] == 2:
                            _8478 = mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 288]]
                            _8480 = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 128]
                            _8481 = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 64]
                            mem[mem[64] + 4] = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96]
                            mem[mem[64] + 36] = _8480 - 100
                            mem[mem[64] + 68] = 1
                            mem[mem[64] + 100] = block.timestamp
                            mem[mem[64] + 132] = address(_8481)
                            require ext_code.size(address(_8478))
                            call address(_8478).tokenToTokenSwapInput(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _8480 - 100, 1, block.timestamp, address(_8481)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                        else:
                            require mem[mem[(32 * uint8(idx)) + _4513 + 32]] <= 5
                            require uint8(idx) < mem[_4513]
                            if mem[mem[(32 * uint8(idx)) + _4513 + 32]] == 3:
                                _8518 = mem[(32 * uint8(idx)) + _4513 + 32]
                                _8544 = mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 320]]
                                _8546 = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 128]
                                mem[mem[64] + 4] = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96]
                                mem[mem[64] + 36] = _8546 - 10
                                mem[mem[64] + 68] = block.timestamp
                                require ext_code.size(address(_8544))
                                call address(_8544).tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _8546 - 10, block.timestamp
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8921 = mem[mem[_8518 + 320] + 32]
                                _8922 = mem[_8518 + 128]
                                mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(_8921))
                                call address(_8921).0xd0e30db0 with:
                                   value _8922 - 10 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require mem[mem[(32 * uint8(idx)) + _4513 + 32]] <= 5
                                require uint8(idx) < mem[_4513]
                                if mem[mem[(32 * uint8(idx)) + _4513 + 32]] != 4:
                                    require mem[mem[(32 * uint8(idx)) + _4513 + 32]] <= 5
                                    if mem[mem[(32 * uint8(idx)) + _4513 + 32]] == 5:
                                        require uint8(idx) < mem[_4513]
                                        _8671 = mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 384]]
                                        _8673 = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 64]
                                        _8674 = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96]
                                        _8675 = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 128]
                                        mem[mem[64] + 4] = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 44 len 20]
                                        mem[mem[64] + 36] = address(_8673)
                                        mem[mem[64] + 68] = _8674
                                        mem[mem[64] + 100] = _8675 - 1000
                                        require ext_code.size(address(_8671))
                                        call address(_8671).convert(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], address(_8673), _8674, _8675 - 1000
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                else:
                                    _8592 = mem[(32 * uint8(idx)) + _4513 + 32]
                                    _8613 = mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 352]]
                                    _8614 = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96]
                                    mem[mem[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _8614
                                    require ext_code.size(address(_8613))
                                    call address(_8613).0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args _8614
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8752 = mem[mem[_8592 + 352] + 32]
                                    _8753 = mem[_8592 + 96]
                                    mem[mem[64] + 4] = mem[_8592 + 128] - 10
                                    mem[mem[64] + 36] = block.timestamp
                                    require ext_code.size(address(_8752))
                                    call address(_8752).ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
                                       value _8753 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], block.timestamp
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                    else:
                        _8431 = mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 256]]
                        _8432 = mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 256] + 32]
                        _8433 = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96]
                        _8434 = mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 256] + 64]
                        _8435 = mem[64]
                        mem[mem[64]] = 0x64a3bc1500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_8432 + 12 len 20]
                        mem[mem[64] + 132] = mem[_8432 + 44 len 20]
                        mem[mem[64] + 164] = mem[_8432 + 76 len 20]
                        mem[mem[64] + 196] = mem[_8432 + 108 len 20]
                        mem[mem[64] + 228] = mem[_8432 + 128]
                        mem[mem[64] + 260] = mem[_8432 + 160]
                        mem[mem[64] + 292] = mem[_8432 + 192]
                        mem[mem[64] + 324] = mem[_8432 + 224]
                        mem[mem[64] + 356] = mem[_8432 + 256]
                        mem[mem[64] + 388] = mem[_8432 + 288]
                        _9158 = mem[_8432 + 320]
                        mem[mem[64] + 420] = 384
                        _9164 = mem[_9158]
                        mem[mem[64] + 484] = mem[_9158]
                        s = 0
                        while s < _9164:
                            mem[s + mem[64] + 516] = mem[s + _9158 + 32]
                            _8350 = mem[_4513]
                            s = s + 32
                            continue 
                        if ceil32(_9164) <= _9164:
                            _9538 = mem[_8432 + 352]
                            mem[_8435 + 452] = ceil32(_9164) + 416
                            _9551 = mem[_9538]
                            mem[_8435 + ceil32(_9164) + 516] = mem[_9538]
                            s = 0
                            while s < _9551:
                                mem[s + _8435 + ceil32(_9164) + 548] = mem[s + _9538 + 32]
                                _8350 = mem[_4513]
                                s = s + 32
                                continue 
                            if ceil32(_9551) <= _9551:
                                mem[_8435 + 36] = _8433 - 10
                                mem[_8435 + 68] = ceil32(_9164) + ceil32(_9551) + 544
                                _10252 = mem[_8434]
                                mem[_8435 + ceil32(_9164) + ceil32(_9551) + 548] = mem[_8434]
                                s = 0
                                while s < _10252:
                                    mem[s + _8435 + ceil32(_9164) + ceil32(_9551) + 580] = mem[s + _8434 + 32]
                                    _8350 = mem[_4513]
                                    s = s + 32
                                    continue 
                                if ceil32(_10252) > _10252:
                                    mem[_8435 + ceil32(_9164) + ceil32(_9551) + _10252 + 580] = 0
                                require ext_code.size(address(_8431))
                                call address(_8431).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _8435 + ceil32(_9164) + ceil32(_9551) + ceil32(_10252) + -mem[64] + 576]
                            else:
                                mem[_8435 + ceil32(_9164) + _9551 + 548] = 0
                                mem[_8435 + 36] = _8433 - 10
                                mem[_8435 + 68] = ceil32(_9164) + ceil32(_9551) + 544
                                _10269 = mem[_8434]
                                mem[_8435 + ceil32(_9164) + ceil32(_9551) + 548] = mem[_8434]
                                s = 0
                                while s < _10269:
                                    mem[s + _8435 + ceil32(_9164) + ceil32(_9551) + 580] = mem[s + _8434 + 32]
                                    _8350 = mem[_4513]
                                    s = s + 32
                                    continue 
                                if ceil32(_10269) > _10269:
                                    mem[_8435 + ceil32(_9164) + ceil32(_9551) + _10269 + 580] = 0
                                require ext_code.size(address(_8431))
                                call address(_8431).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _8435 + ceil32(_9164) + ceil32(_9551) + ceil32(_10269) + -mem[64] + 576]
                        else:
                            mem[_8435 + _9164 + 516] = 0
                            _9543 = mem[_8432 + 352]
                            mem[_8435 + 452] = ceil32(_9164) + 416
                            _9559 = mem[_9543]
                            mem[_8435 + ceil32(_9164) + 516] = mem[_9543]
                            s = 0
                            while s < _9559:
                                mem[s + _8435 + ceil32(_9164) + 548] = mem[s + _9543 + 32]
                                _8350 = mem[_4513]
                                s = s + 32
                                continue 
                            if ceil32(_9559) <= _9559:
                                mem[_8435 + 36] = _8433 - 10
                                mem[_8435 + 68] = ceil32(_9164) + ceil32(_9559) + 544
                                _10253 = mem[_8434]
                                mem[_8435 + ceil32(_9164) + ceil32(_9559) + 548] = mem[_8434]
                                s = 0
                                while s < _10253:
                                    mem[s + _8435 + ceil32(_9164) + ceil32(_9559) + 580] = mem[s + _8434 + 32]
                                    _8350 = mem[_4513]
                                    s = s + 32
                                    continue 
                                if ceil32(_10253) > _10253:
                                    mem[_8435 + ceil32(_9164) + ceil32(_9559) + _10253 + 580] = 0
                                require ext_code.size(address(_8431))
                                call address(_8431).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _8435 + ceil32(_9164) + ceil32(_9559) + ceil32(_10253) + -mem[64] + 576]
                            else:
                                mem[_8435 + ceil32(_9164) + _9559 + 548] = 0
                                mem[_8435 + 36] = _8433 - 10
                                mem[_8435 + 68] = ceil32(_9164) + ceil32(_9559) + 544
                                _10270 = mem[_8434]
                                mem[_8435 + ceil32(_9164) + ceil32(_9559) + 548] = mem[_8434]
                                s = 0
                                while s < _10270:
                                    mem[s + _8435 + ceil32(_9164) + ceil32(_9559) + 580] = mem[s + _8434 + 32]
                                    _8350 = mem[_4513]
                                    s = s + 32
                                    continue 
                                if ceil32(_10270) > _10270:
                                    mem[_8435 + ceil32(_9164) + ceil32(_9559) + _10270 + 580] = 0
                                require ext_code.size(address(_8431))
                                call address(_8431).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _8435 + ceil32(_9164) + ceil32(_9559) + ceil32(_10270) + -mem[64] + 576]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                _8350 = mem[_4513]
                idx = idx + 1
                continue 
    else:
        mem[_4513 + (32 * _4512) + 32] = 0
        mem[_4513 + (32 * _4512) + 64] = 0
        mem[_4513 + (32 * _4512) + 96] = 0
        mem[_4513 + (32 * _4512) + 128] = 0
        mem[_4513 + (32 * _4512) + 160] = 0
        mem[_4513 + (32 * _4512) + 192] = 0
        mem[_4513 + (32 * _4512) + 224] = 0
        mem[_4513 + (32 * _4512) + 1344] = 0
        mem[_4513 + (32 * _4512) + 1376] = 0
        mem[_4513 + (32 * _4512) + 256] = _4513 + (32 * _4512) + 1344
        mem[_4513 + (32 * _4512) + 1408] = 0
        mem[_4513 + (32 * _4512) + 1856] = 0
        mem[_4513 + (32 * _4512) + 1888] = 0
        mem[_4513 + (32 * _4512) + 1920] = 0
        mem[_4513 + (32 * _4512) + 1952] = 0
        mem[_4513 + (32 * _4512) + 1984] = 0
        mem[_4513 + (32 * _4512) + 2016] = 0
        mem[_4513 + (32 * _4512) + 2048] = 0
        mem[_4513 + (32 * _4512) + 2080] = 0
        mem[_4513 + (32 * _4512) + 2112] = 0
        mem[_4513 + (32 * _4512) + 2144] = 0
        mem[_4513 + (32 * _4512) + 2176] = 96
        mem[_4513 + (32 * _4512) + 2208] = 96
        mem[_4513 + (32 * _4512) + 1440] = _4513 + (32 * _4512) + 1856
        mem[_4513 + (32 * _4512) + 1472] = 96
        mem[_4513 + (32 * _4512) + 288] = _4513 + (32 * _4512) + 1408
        mem[_4513 + (32 * _4512) + 2240] = 0
        mem[_4513 + (32 * _4512) + 2272] = 0
        mem[_4513 + (32 * _4512) + 2304] = 0
        mem[_4513 + (32 * _4512) + 2336] = 0
        mem[_4513 + (32 * _4512) + 2368] = 0
        mem[_4513 + (32 * _4512) + 2400] = 0
        mem[_4513 + (32 * _4512) + 320] = _4513 + (32 * _4512) + 2240
        mem[_4513 + (32 * _4512) + 2432] = 0
        mem[_4513 + (32 * _4512) + 2464] = 0
        mem[_4513 + (32 * _4512) + 2496] = 0
        mem[_4513 + (32 * _4512) + 2528] = 0
        mem[_4513 + (32 * _4512) + 352] = _4513 + (32 * _4512) + 2432
        mem[_4513 + (32 * _4512) + 2560] = 0
        mem[_4513 + (32 * _4512) + 2592] = 0
        mem[_4513 + (32 * _4512) + 2624] = 0
        mem[_4513 + (32 * _4512) + 2656] = 0
        mem[_4513 + (32 * _4512) + 384] = _4513 + (32 * _4512) + 2560
        mem[64] = _4513 + (32 * _4512) + 2816
        mem[_4513 + (32 * _4512) + 2688] = 0
        mem[_4513 + (32 * _4512) + 2720] = 0
        mem[_4513 + (32 * _4512) + 2752] = 0
        mem[_4513 + (32 * _4512) + 2784] = 0
        mem[_4513 + (32 * _4512) + 416] = _4513 + (32 * _4512) + 2688
        mem[var95002] = _4513 + (32 * _4512) + 32
        s = _4513 + (32 * _4512) + 256
        s = _4513 + (32 * _4512) + 32
        s = var95002
        idx = var95003
        while idx - 1:
            _8589 = mem[64]
            mem[64] = mem[64] + 1312
            mem[_8589] = 0
            mem[_8589 + 32] = 0
            mem[_8589 + 64] = 0
            mem[_8589 + 96] = 0
            mem[_8589 + 128] = 0
            mem[_8589 + 160] = 0
            mem[_8589 + 192] = 0
            mem[64] = mem[64] + 64
            mem[_4513 + (32 * _4512) + 1344] = 0
            mem[_4513 + (32 * _4512) + 1376] = 0
            mem[_8589 + 224] = _4513 + (32 * _4512) + 1344
            mem[64] = mem[64] + 448
            mem[_4513 + (32 * _4512) + 1408] = 0
            mem[64] = mem[64] + 384
            mem[_4513 + (32 * _4512) + 1856] = 0
            mem[_4513 + (32 * _4512) + 1888] = 0
            mem[_4513 + (32 * _4512) + 1920] = 0
            mem[_4513 + (32 * _4512) + 1952] = 0
            mem[_4513 + (32 * _4512) + 1984] = 0
            mem[_4513 + (32 * _4512) + 2016] = 0
            mem[_4513 + (32 * _4512) + 2048] = 0
            mem[_4513 + (32 * _4512) + 2080] = 0
            mem[_4513 + (32 * _4512) + 2112] = 0
            mem[_4513 + (32 * _4512) + 2144] = 0
            mem[_4513 + (32 * _4512) + 2176] = 96
            mem[_4513 + (32 * _4512) + 2208] = 96
            mem[_4513 + (32 * _4512) + 1440] = _4513 + (32 * _4512) + 1856
            mem[_4513 + (32 * _4512) + 1472] = 96
            mem[_8589 + 256] = _4513 + (32 * _4512) + 1408
            mem[64] = mem[64] + 192
            mem[_4513 + (32 * _4512) + 2240] = 0
            mem[_4513 + (32 * _4512) + 2272] = 0
            mem[_4513 + (32 * _4512) + 2304] = 0
            mem[_4513 + (32 * _4512) + 2336] = 0
            mem[_4513 + (32 * _4512) + 2368] = 0
            mem[_4513 + (32 * _4512) + 2400] = 0
            mem[_8589 + 288] = _4513 + (32 * _4512) + 2240
            mem[64] = mem[64] + 128
            mem[_4513 + (32 * _4512) + 2432] = 0
            mem[_4513 + (32 * _4512) + 2464] = 0
            mem[_4513 + (32 * _4512) + 2496] = 0
            mem[_4513 + (32 * _4512) + 2528] = 0
            mem[_8589 + 320] = _4513 + (32 * _4512) + 2432
            mem[64] = mem[64] + 128
            mem[_4513 + (32 * _4512) + 2560] = 0
            mem[_4513 + (32 * _4512) + 2592] = 0
            mem[_4513 + (32 * _4512) + 2624] = 0
            mem[_4513 + (32 * _4512) + 2656] = 0
            mem[_8589 + 352] = _4513 + (32 * _4512) + 2560
            mem[64] = mem[64] + 128
            mem[_4513 + (32 * _4512) + 2688] = 0
            mem[_4513 + (32 * _4512) + 2720] = 0
            mem[_4513 + (32 * _4512) + 2752] = 0
            mem[_4513 + (32 * _4512) + 2784] = 0
            mem[_8589 + 384] = _4513 + (32 * _4512) + 2688
            mem[s + 32] = _8589
            s = _8589 + 224
            s = _8589
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while uint8(idx) < _4512:
            require uint8(idx) < mem[96]
            if not mem[(32 * uint8(idx)) + 159 len 1]:
                require uint8(idx) < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192]
                _9532 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224]
                _9542 = mem[64]
                mem[64] = mem[64] + 1312
                mem[_9542] = 0
                mem[_9542 + 32] = 0
                mem[_9542 + 64] = 0
                mem[_9542 + 96] = 0
                mem[_9542 + 128] = 0
                mem[_9542 + 160] = 0
                mem[_9542 + 192] = 0
                _9550 = mem[64]
                mem[64] = mem[64] + 64
                mem[_9550] = 0
                mem[_9550 + 32] = 0
                mem[_9542 + 224] = _9550
                _9568 = mem[64]
                mem[64] = mem[64] + 448
                mem[_9568] = 0
                _9577 = mem[64]
                mem[64] = mem[64] + 384
                mem[_9577] = 0
                mem[_9577 + 32] = 0
                mem[_9577 + 64] = 0
                mem[_9577 + 96] = 0
                mem[_9577 + 128] = 0
                mem[_9577 + 160] = 0
                mem[_9577 + 192] = 0
                mem[_9577 + 224] = 0
                mem[_9577 + 256] = 0
                mem[_9577 + 288] = 0
                mem[_9577 + 320] = 96
                mem[_9577 + 352] = 96
                mem[_9568 + 32] = _9577
                mem[_9568 + 64] = 96
                mem[_9542 + 256] = _9568
                _9607 = mem[64]
                mem[64] = mem[64] + 192
                mem[_9607] = 0
                mem[_9607 + 32] = 0
                mem[_9607 + 64] = 0
                mem[_9607 + 96] = 0
                mem[_9607 + 128] = 0
                mem[_9607 + 160] = 0
                mem[_9542 + 288] = _9607
                _9631 = mem[64]
                mem[64] = mem[64] + 128
                mem[_9631] = 0
                mem[_9631 + 32] = 0
                mem[_9631 + 64] = 0
                mem[_9631 + 96] = 0
                mem[_9542 + 320] = _9631
                _9652 = mem[64]
                mem[64] = mem[64] + 128
                mem[_9652] = 0
                mem[_9652 + 32] = 0
                mem[_9652 + 64] = 0
                mem[_9652 + 96] = 0
                mem[_9542 + 352] = _9652
                _9679 = mem[64]
                mem[64] = mem[64] + 128
                mem[_9679] = 0
                mem[_9679 + 32] = 0
                mem[_9679 + 64] = 0
                mem[_9679 + 96] = 0
                mem[_9542 + 384] = _9679
                _9720 = mem[_9532 + 32]
                require ext_code.size(sub_3ec7a073Address)
                staticcall sub_3ec7a073Address.offers(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[_9532 + 32]
                mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9847 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 192
                _9870 = mem[_9847]
                _9916 = mem[_9847 + 64]
                _9967 = mem[64]
                mem[64] = mem[64] + 1312
                mem[_9967] = 0
                mem[_9967 + 32] = 0
                mem[_9967 + 64] = 0
                mem[_9967 + 96] = 0
                mem[_9967 + 128] = 0
                mem[_9967 + 160] = 0
                mem[_9967 + 192] = 0
                _9970 = mem[64]
                mem[64] = mem[64] + 64
                mem[_9970] = 0
                mem[_9970 + 32] = 0
                mem[_9967 + 224] = _9970
                _9974 = mem[64]
                mem[64] = mem[64] + 448
                mem[_9974] = 0
                _9978 = mem[64]
                mem[64] = mem[64] + 384
                mem[_9978] = 0
                mem[_9978 + 32] = 0
                mem[_9978 + 64] = 0
                mem[_9978 + 96] = 0
                mem[_9978 + 128] = 0
                mem[_9978 + 160] = 0
                mem[_9978 + 192] = 0
                mem[_9978 + 224] = 0
                mem[_9978 + 256] = 0
                mem[_9978 + 288] = 0
                mem[_9978 + 320] = 96
                mem[_9978 + 352] = 96
                mem[_9974 + 32] = _9978
                mem[_9974 + 64] = 96
                mem[_9967 + 256] = _9974
                _9988 = mem[64]
                mem[64] = mem[64] + 192
                mem[_9988] = 0
                mem[_9988 + 32] = 0
                mem[_9988 + 64] = 0
                mem[_9988 + 96] = 0
                mem[_9988 + 128] = 0
                mem[_9988 + 160] = 0
                mem[_9967 + 288] = _9988
                _9992 = mem[64]
                mem[64] = mem[64] + 128
                mem[_9992] = 0
                mem[_9992 + 32] = 0
                mem[_9992 + 64] = 0
                mem[_9992 + 96] = 0
                mem[_9967 + 320] = _9992
                _9998 = mem[64]
                mem[64] = mem[64] + 128
                mem[_9998] = 0
                mem[_9998 + 32] = 0
                mem[_9998 + 64] = 0
                mem[_9998 + 96] = 0
                mem[_9967 + 352] = _9998
                _10002 = mem[64]
                mem[64] = mem[64] + 128
                mem[_10002] = 0
                mem[_10002 + 32] = 0
                mem[_10002 + 64] = 0
                mem[_10002 + 96] = 0
                mem[_9967 + 384] = _10002
                if _9916 < 100:
                    require uint8(idx) < mem[_4513]
                mem[_9967] = 0
                mem[_9967 + 160] = _9916
                if not _9870:
                    require _9916 > 0
                    require _9916
                    mem[_9967 + 192] = 0 / _9916
                    _10017 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10017] = sub_3ec7a073Address
                    mem[_10017 + 32] = _9720
                    mem[_9967 + 224] = _10017
                else:
                    require 1000000000 * 10^18 * _9870 / _9870 == 1000000000 * 10^18
                    require _9916 > 0
                    require _9916
                    mem[_9967 + 192] = 1000000000 * 10^18 * _9870 / _9916
                    _10022 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10022] = sub_3ec7a073Address
                    mem[_10022 + 32] = _9720
                    mem[_9967 + 224] = _10022
                require uint8(idx) < mem[_4513]
                mem[(32 * uint8(idx)) + _4513 + 32] = _9967
            else:
                require uint8(idx) < mem[96]
                if mem[(32 * uint8(idx)) + 159 len 1] != 1:
                    require uint8(idx) < mem[96]
                    if mem[(32 * uint8(idx)) + 159 len 1] != 2:
                        require uint8(idx) < mem[96]
                        if mem[(32 * uint8(idx)) + 159 len 1] == 3:
                            require uint8(idx) < mem[(32 * ('cd', 68).length) + 128]
                            _9575 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + 160]
                            require uint8(idx) < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                            _9583 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                            _9606 = mem[64]
                            mem[64] = mem[64] + 1312
                            mem[_9606] = 0
                            mem[_9606 + 32] = 0
                            mem[_9606 + 64] = 0
                            mem[_9606 + 96] = 0
                            mem[_9606 + 128] = 0
                            mem[_9606 + 160] = 0
                            mem[_9606 + 192] = 0
                            _9616 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9616] = 0
                            mem[_9616 + 32] = 0
                            mem[_9606 + 224] = _9616
                            _9643 = mem[64]
                            mem[64] = mem[64] + 448
                            mem[_9643] = 0
                            _9650 = mem[64]
                            mem[64] = mem[64] + 384
                            mem[_9650] = 0
                            mem[_9650 + 32] = 0
                            mem[_9650 + 64] = 0
                            mem[_9650 + 96] = 0
                            mem[_9650 + 128] = 0
                            mem[_9650 + 160] = 0
                            mem[_9650 + 192] = 0
                            mem[_9650 + 224] = 0
                            mem[_9650 + 256] = 0
                            mem[_9650 + 288] = 0
                            mem[_9650 + 320] = 96
                            mem[_9650 + 352] = 96
                            mem[_9643 + 32] = _9650
                            mem[_9643 + 64] = 96
                            mem[_9606 + 256] = _9643
                            _9690 = mem[64]
                            mem[64] = mem[64] + 192
                            mem[_9690] = 0
                            mem[_9690 + 32] = 0
                            mem[_9690 + 64] = 0
                            mem[_9690 + 96] = 0
                            mem[_9690 + 128] = 0
                            mem[_9690 + 160] = 0
                            mem[_9606 + 288] = _9690
                            _9718 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_9718] = 0
                            mem[_9718 + 32] = 0
                            mem[_9718 + 64] = 0
                            mem[_9718 + 96] = 0
                            mem[_9606 + 320] = _9718
                            _9743 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_9743] = 0
                            mem[_9743 + 32] = 0
                            mem[_9743 + 64] = 0
                            mem[_9743 + 96] = 0
                            mem[_9606 + 352] = _9743
                            _9775 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_9775] = 0
                            mem[_9775 + 32] = 0
                            mem[_9775 + 64] = 0
                            mem[_9775 + 96] = 0
                            mem[_9606 + 384] = _9775
                            _9814 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_9814] = 0
                            mem[_9814 + 32] = 0
                            mem[_9814 + 64] = 0
                            mem[_9814 + 96] = 0
                            mem[mem[64] + 4] = address(_9575)
                            require ext_code.size(uniswapAddress)
                            staticcall uniswapAddress.getExchange(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_9575)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9890 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _9900 = mem[_9890]
                            mem[_9814] = mem[_9890 + 12 len 20]
                            mem[_9814 + 32] = address(_9583)
                            mem[mem[64] + 4] = address(_9900)
                            require ext_code.size(address(_9575))
                            staticcall address(_9575).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_9900)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9937 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_9814 + 64] = mem[_9937]
                            mem[_9814 + 96] = eth.balance(mem[_9814])
                            _9954 = mem[64]
                            mem[64] = mem[64] + 1312
                            mem[_9954] = 0
                            mem[_9954 + 32] = 0
                            mem[_9954 + 64] = 0
                            mem[_9954 + 96] = 0
                            mem[_9954 + 128] = 0
                            mem[_9954 + 160] = 0
                            mem[_9954 + 192] = 0
                            _9956 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9956] = 0
                            mem[_9956 + 32] = 0
                            mem[_9954 + 224] = _9956
                            _9961 = mem[64]
                            mem[64] = mem[64] + 448
                            mem[_9961] = 0
                            _9962 = mem[64]
                            mem[64] = mem[64] + 384
                            mem[_9962] = 0
                            mem[_9962 + 32] = 0
                            mem[_9962 + 64] = 0
                            mem[_9962 + 96] = 0
                            mem[_9962 + 128] = 0
                            mem[_9962 + 160] = 0
                            mem[_9962 + 192] = 0
                            mem[_9962 + 224] = 0
                            mem[_9962 + 256] = 0
                            mem[_9962 + 288] = 0
                            mem[_9962 + 320] = 96
                            mem[_9962 + 352] = 96
                            mem[_9961 + 32] = _9962
                            mem[_9961 + 64] = 96
                            mem[_9954 + 256] = _9961
                            _9968 = mem[64]
                            mem[64] = mem[64] + 192
                            mem[_9968] = 0
                            mem[_9968 + 32] = 0
                            mem[_9968 + 64] = 0
                            mem[_9968 + 96] = 0
                            mem[_9968 + 128] = 0
                            mem[_9968 + 160] = 0
                            mem[_9954 + 288] = _9968
                            _9972 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_9972] = 0
                            mem[_9972 + 32] = 0
                            mem[_9972 + 64] = 0
                            mem[_9972 + 96] = 0
                            mem[_9954 + 320] = _9972
                            _9981 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_9981] = 0
                            mem[_9981 + 32] = 0
                            mem[_9981 + 64] = 0
                            mem[_9981 + 96] = 0
                            mem[_9954 + 352] = _9981
                            _9987 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_9987] = 0
                            mem[_9987 + 32] = 0
                            mem[_9987 + 64] = 0
                            mem[_9987 + 96] = 0
                            mem[_9954 + 384] = _9987
                            mem[_9954] = 3
                            mem[_9954 + 160] = 0x100000000000000000000000000000000
                            mem[_9954 + 320] = _9814
                            require uint8(idx) < mem[_4513]
                            mem[(32 * uint8(idx)) + _4513 + 32] = _9954
                        else:
                            require uint8(idx) < mem[96]
                            if mem[(32 * uint8(idx)) + 159 len 1] == 4:
                                require uint8(idx) < mem[(32 * ('cd', 68).length) + 128]
                                _9592 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + 160]
                                require uint8(idx) < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                                _9605 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                                _9628 = mem[64]
                                mem[64] = mem[64] + 1312
                                mem[_9628] = 0
                                mem[_9628 + 32] = 0
                                mem[_9628 + 64] = 0
                                mem[_9628 + 96] = 0
                                mem[_9628 + 128] = 0
                                mem[_9628 + 160] = 0
                                mem[_9628 + 192] = 0
                                _9642 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9642] = 0
                                mem[_9642 + 32] = 0
                                mem[_9628 + 224] = _9642
                                _9663 = mem[64]
                                mem[64] = mem[64] + 448
                                mem[_9663] = 0
                                _9677 = mem[64]
                                mem[64] = mem[64] + 384
                                mem[_9677] = 0
                                mem[_9677 + 32] = 0
                                mem[_9677 + 64] = 0
                                mem[_9677 + 96] = 0
                                mem[_9677 + 128] = 0
                                mem[_9677 + 160] = 0
                                mem[_9677 + 192] = 0
                                mem[_9677 + 224] = 0
                                mem[_9677 + 256] = 0
                                mem[_9677 + 288] = 0
                                mem[_9677 + 320] = 96
                                mem[_9677 + 352] = 96
                                mem[_9663 + 32] = _9677
                                mem[_9663 + 64] = 96
                                mem[_9628 + 256] = _9663
                                _9717 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_9717] = 0
                                mem[_9717 + 32] = 0
                                mem[_9717 + 64] = 0
                                mem[_9717 + 96] = 0
                                mem[_9717 + 128] = 0
                                mem[_9717 + 160] = 0
                                mem[_9628 + 288] = _9717
                                _9742 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_9742] = 0
                                mem[_9742 + 32] = 0
                                mem[_9742 + 64] = 0
                                mem[_9742 + 96] = 0
                                mem[_9628 + 320] = _9742
                                _9774 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_9774] = 0
                                mem[_9774 + 32] = 0
                                mem[_9774 + 64] = 0
                                mem[_9774 + 96] = 0
                                mem[_9628 + 352] = _9774
                                _9801 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_9801] = 0
                                mem[_9801 + 32] = 0
                                mem[_9801 + 64] = 0
                                mem[_9801 + 96] = 0
                                mem[_9628 + 384] = _9801
                                _9846 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_9846 + 32] = 0
                                mem[_9846 + 64] = 0
                                mem[_9846 + 96] = 0
                                mem[_9846] = address(_9592)
                                mem[mem[64] + 4] = address(_9605)
                                require ext_code.size(uniswapAddress)
                                staticcall uniswapAddress.getExchange(address arg1) with:
                                        gas gas_remaining wei
                                       args address(_9605)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9898 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _9904 = mem[_9898]
                                mem[_9846 + 32] = mem[_9898 + 12 len 20]
                                mem[_9846 + 64] = eth.balance(_9904)
                                mem[mem[64] + 4] = address(_9904)
                                require ext_code.size(address(_9605))
                                staticcall address(_9605).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_9904)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9941 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[_9846 + 96] = mem[_9941]
                                _9958 = mem[64]
                                mem[64] = mem[64] + 1312
                                mem[_9958] = 0
                                mem[_9958 + 32] = 0
                                mem[_9958 + 64] = 0
                                mem[_9958 + 96] = 0
                                mem[_9958 + 128] = 0
                                mem[_9958 + 160] = 0
                                mem[_9958 + 192] = 0
                                _9960 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9960] = 0
                                mem[_9960 + 32] = 0
                                mem[_9958 + 224] = _9960
                                _9964 = mem[64]
                                mem[64] = mem[64] + 448
                                mem[_9964] = 0
                                _9965 = mem[64]
                                mem[64] = mem[64] + 384
                                mem[_9965] = 0
                                mem[_9965 + 32] = 0
                                mem[_9965 + 64] = 0
                                mem[_9965 + 96] = 0
                                mem[_9965 + 128] = 0
                                mem[_9965 + 160] = 0
                                mem[_9965 + 192] = 0
                                mem[_9965 + 224] = 0
                                mem[_9965 + 256] = 0
                                mem[_9965 + 288] = 0
                                mem[_9965 + 320] = 96
                                mem[_9965 + 352] = 96
                                mem[_9964 + 32] = _9965
                                mem[_9964 + 64] = 96
                                mem[_9958 + 256] = _9964
                                _9971 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_9971] = 0
                                mem[_9971 + 32] = 0
                                mem[_9971 + 64] = 0
                                mem[_9971 + 96] = 0
                                mem[_9971 + 128] = 0
                                mem[_9971 + 160] = 0
                                mem[_9958 + 288] = _9971
                                _9980 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_9980] = 0
                                mem[_9980 + 32] = 0
                                mem[_9980 + 64] = 0
                                mem[_9980 + 96] = 0
                                mem[_9958 + 320] = _9980
                                _9986 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_9986] = 0
                                mem[_9986 + 32] = 0
                                mem[_9986 + 64] = 0
                                mem[_9986 + 96] = 0
                                mem[_9958 + 352] = _9986
                                _9991 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_9991] = 0
                                mem[_9991 + 32] = 0
                                mem[_9991 + 64] = 0
                                mem[_9991 + 96] = 0
                                mem[_9958 + 384] = _9991
                                mem[_9958] = 4
                                mem[_9958 + 160] = 0x100000000000000000000000000000000
                                mem[_9958 + 352] = _9846
                                require uint8(idx) < mem[_4513]
                                mem[(32 * uint8(idx)) + _4513 + 32] = _9958
                            else:
                                require uint8(idx) < mem[96]
                                if mem[(32 * uint8(idx)) + 159 len 1] == 5:
                                    require uint8(idx) < mem[(32 * ('cd', 68).length) + 128]
                                    _9614 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + 160]
                                    require uint8(idx) < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                                    _9626 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                                    require uint8(idx) < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192]
                                    _9641 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224]
                                    _9662 = mem[64]
                                    mem[64] = mem[64] + 1312
                                    mem[_9662] = 0
                                    mem[_9662 + 32] = 0
                                    mem[_9662 + 64] = 0
                                    mem[_9662 + 96] = 0
                                    mem[_9662 + 128] = 0
                                    mem[_9662 + 160] = 0
                                    mem[_9662 + 192] = 0
                                    _9676 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9676] = 0
                                    mem[_9676 + 32] = 0
                                    mem[_9662 + 224] = _9676
                                    _9704 = mem[64]
                                    mem[64] = mem[64] + 448
                                    mem[_9704] = 0
                                    _9716 = mem[64]
                                    mem[64] = mem[64] + 384
                                    mem[_9716] = 0
                                    mem[_9716 + 32] = 0
                                    mem[_9716 + 64] = 0
                                    mem[_9716 + 96] = 0
                                    mem[_9716 + 128] = 0
                                    mem[_9716 + 160] = 0
                                    mem[_9716 + 192] = 0
                                    mem[_9716 + 224] = 0
                                    mem[_9716 + 256] = 0
                                    mem[_9716 + 288] = 0
                                    mem[_9716 + 320] = 96
                                    mem[_9716 + 352] = 96
                                    mem[_9704 + 32] = _9716
                                    mem[_9704 + 64] = 96
                                    mem[_9662 + 256] = _9704
                                    _9759 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_9759] = 0
                                    mem[_9759 + 32] = 0
                                    mem[_9759 + 64] = 0
                                    mem[_9759 + 96] = 0
                                    mem[_9759 + 128] = 0
                                    mem[_9759 + 160] = 0
                                    mem[_9662 + 288] = _9759
                                    _9783 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_9783] = 0
                                    mem[_9783 + 32] = 0
                                    mem[_9783 + 64] = 0
                                    mem[_9783 + 96] = 0
                                    mem[_9662 + 320] = _9783
                                    _9813 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_9813] = 0
                                    mem[_9813 + 32] = 0
                                    mem[_9813 + 64] = 0
                                    mem[_9813 + 96] = 0
                                    mem[_9662 + 352] = _9813
                                    _9845 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_9845] = 0
                                    mem[_9845 + 32] = 0
                                    mem[_9845 + 64] = 0
                                    mem[_9845 + 96] = 0
                                    mem[_9662 + 384] = _9845
                                    _9871 = mem[_9641 + 32]
                                    _9878 = mem[64]
                                    mem[64] = mem[64] + 1312
                                    mem[_9878] = 0
                                    mem[_9878 + 32] = 0
                                    mem[_9878 + 64] = 0
                                    mem[_9878 + 96] = 0
                                    mem[_9878 + 128] = 0
                                    mem[_9878 + 160] = 0
                                    mem[_9878 + 192] = 0
                                    _9884 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9884] = 0
                                    mem[_9884 + 32] = 0
                                    mem[_9878 + 224] = _9884
                                    _9893 = mem[64]
                                    mem[64] = mem[64] + 448
                                    mem[_9893] = 0
                                    _9897 = mem[64]
                                    mem[64] = mem[64] + 384
                                    mem[_9897] = 0
                                    mem[_9897 + 32] = 0
                                    mem[_9897 + 64] = 0
                                    mem[_9897 + 96] = 0
                                    mem[_9897 + 128] = 0
                                    mem[_9897 + 160] = 0
                                    mem[_9897 + 192] = 0
                                    mem[_9897 + 224] = 0
                                    mem[_9897 + 256] = 0
                                    mem[_9897 + 288] = 0
                                    mem[_9897 + 320] = 96
                                    mem[_9897 + 352] = 96
                                    mem[_9893 + 32] = _9897
                                    mem[_9893 + 64] = 96
                                    mem[_9878 + 256] = _9893
                                    _9903 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_9903] = 0
                                    mem[_9903 + 32] = 0
                                    mem[_9903 + 64] = 0
                                    mem[_9903 + 96] = 0
                                    mem[_9903 + 128] = 0
                                    mem[_9903 + 160] = 0
                                    mem[_9878 + 288] = _9903
                                    _9912 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_9912] = 0
                                    mem[_9912 + 32] = 0
                                    mem[_9912 + 64] = 0
                                    mem[_9912 + 96] = 0
                                    mem[_9878 + 320] = _9912
                                    _9917 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_9917] = 0
                                    mem[_9917 + 32] = 0
                                    mem[_9917 + 64] = 0
                                    mem[_9917 + 96] = 0
                                    mem[_9878 + 352] = _9917
                                    _9922 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_9922] = 0
                                    mem[_9922 + 32] = 0
                                    mem[_9922 + 64] = 0
                                    mem[_9922 + 96] = 0
                                    mem[_9878 + 384] = _9922
                                    mem[_9878] = 5
                                    mem[_9878 + 32] = address(_9614)
                                    mem[_9878 + 64] = address(_9626)
                                    mem[_9878 + 160] = 0x100000000000000000000000000000000
                                    _9925 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_9925] = Mask(160, 96, _9871) >> 96
                                    mem[mem[64] + 4] = Mask(160, 96, _9871) >> 96
                                    require ext_code.size(address(_9614))
                                    staticcall address(_9614).0x70a08231 with:
                                            gas gas_remaining wei
                                           args Mask(160, 96, _9871)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9943 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[_9925 + 32] = mem[_9943]
                                    mem[mem[64] + 4] = Mask(160, 96, _9871) >> 96
                                    require ext_code.size(address(_9626))
                                    staticcall address(_9626).0x70a08231 with:
                                            gas gas_remaining wei
                                           args Mask(160, 96, _9871)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9983 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[_9925 + 64] = mem[_9983]
                                    require ext_code.size(Mask(160, 96, _9871) >> 96)
                                    staticcall Mask(160, 96, _9871) >> 96.conversionFee() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10005 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[_9925 + 96] = mem[_10005 + 28 len 4]
                                    mem[_9878 + 384] = _9925
                                    require uint8(idx) < mem[_4513]
                                    mem[(32 * uint8(idx)) + _4513 + 32] = _9878
                    else:
                        require uint8(idx) < mem[(32 * ('cd', 68).length) + 128]
                        _9556 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + 160]
                        require uint8(idx) < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                        _9566 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                        _9584 = mem[64]
                        mem[64] = mem[64] + 1312
                        mem[_9584] = 0
                        mem[_9584 + 32] = 0
                        mem[_9584 + 64] = 0
                        mem[_9584 + 96] = 0
                        mem[_9584 + 128] = 0
                        mem[_9584 + 160] = 0
                        mem[_9584 + 192] = 0
                        _9594 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9594] = 0
                        mem[_9594 + 32] = 0
                        mem[_9584 + 224] = _9594
                        _9617 = mem[64]
                        mem[64] = mem[64] + 448
                        mem[_9617] = 0
                        _9629 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_9629] = 0
                        mem[_9629 + 32] = 0
                        mem[_9629 + 64] = 0
                        mem[_9629 + 96] = 0
                        mem[_9629 + 128] = 0
                        mem[_9629 + 160] = 0
                        mem[_9629 + 192] = 0
                        mem[_9629 + 224] = 0
                        mem[_9629 + 256] = 0
                        mem[_9629 + 288] = 0
                        mem[_9629 + 320] = 96
                        mem[_9629 + 352] = 96
                        mem[_9617 + 32] = _9629
                        mem[_9617 + 64] = 96
                        mem[_9584 + 256] = _9617
                        _9664 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_9664] = 0
                        mem[_9664 + 32] = 0
                        mem[_9664 + 64] = 0
                        mem[_9664 + 96] = 0
                        mem[_9664 + 128] = 0
                        mem[_9664 + 160] = 0
                        mem[_9584 + 288] = _9664
                        _9691 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_9691] = 0
                        mem[_9691 + 32] = 0
                        mem[_9691 + 64] = 0
                        mem[_9691 + 96] = 0
                        mem[_9584 + 320] = _9691
                        _9719 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_9719] = 0
                        mem[_9719 + 32] = 0
                        mem[_9719 + 64] = 0
                        mem[_9719 + 96] = 0
                        mem[_9584 + 352] = _9719
                        _9744 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_9744] = 0
                        mem[_9744 + 32] = 0
                        mem[_9744 + 64] = 0
                        mem[_9744 + 96] = 0
                        mem[_9584 + 384] = _9744
                        _9784 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_9784] = 0
                        mem[_9784 + 32] = 0
                        mem[_9784 + 64] = 0
                        mem[_9784 + 96] = 0
                        mem[_9784 + 128] = 0
                        mem[_9784 + 160] = 0
                        mem[mem[64] + 4] = address(_9556)
                        require ext_code.size(uniswapAddress)
                        staticcall uniswapAddress.getExchange(address arg1) with:
                                gas gas_remaining wei
                               args address(_9556)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9880 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_9784] = mem[_9880 + 12 len 20]
                        mem[mem[64] + 4] = address(_9566)
                        require ext_code.size(uniswapAddress)
                        staticcall uniswapAddress.getExchange(address arg1) with:
                                gas gas_remaining wei
                               args address(_9566)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9934 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_9784 + 32] = mem[_9934 + 12 len 20]
                        _9952 = mem[_9784]
                        mem[mem[64] + 4] = mem[_9784 + 12 len 20]
                        require ext_code.size(address(_9556))
                        staticcall address(_9556).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_9952)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9973 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_9784 + 64] = mem[_9973]
                        mem[_9784 + 96] = eth.balance(mem[_9784])
                        _9996 = mem[_9784 + 32]
                        mem[_9784 + 128] = eth.balance(mem[_9784 + 32])
                        mem[mem[64] + 4] = mem[_9784 + 44 len 20]
                        require ext_code.size(address(_9566))
                        staticcall address(_9566).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_9996)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10010 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_9784 + 160] = mem[_10010]
                        _10027 = mem[64]
                        mem[64] = mem[64] + 1312
                        mem[_10027] = 0
                        mem[_10027 + 32] = 0
                        mem[_10027 + 64] = 0
                        mem[_10027 + 96] = 0
                        mem[_10027 + 128] = 0
                        mem[_10027 + 160] = 0
                        mem[_10027 + 192] = 0
                        _10031 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10031] = 0
                        mem[_10031 + 32] = 0
                        mem[_10027 + 224] = _10031
                        _10033 = mem[64]
                        mem[64] = mem[64] + 448
                        mem[_10033] = 0
                        _10034 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_10034] = 0
                        mem[_10034 + 32] = 0
                        mem[_10034 + 64] = 0
                        mem[_10034 + 96] = 0
                        mem[_10034 + 128] = 0
                        mem[_10034 + 160] = 0
                        mem[_10034 + 192] = 0
                        mem[_10034 + 224] = 0
                        mem[_10034 + 256] = 0
                        mem[_10034 + 288] = 0
                        mem[_10034 + 320] = 96
                        mem[_10034 + 352] = 96
                        mem[_10033 + 32] = _10034
                        mem[_10033 + 64] = 96
                        mem[_10027 + 256] = _10033
                        _10039 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_10039] = 0
                        mem[_10039 + 32] = 0
                        mem[_10039 + 64] = 0
                        mem[_10039 + 96] = 0
                        mem[_10039 + 128] = 0
                        mem[_10039 + 160] = 0
                        mem[_10027 + 288] = _10039
                        _10047 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_10047] = 0
                        mem[_10047 + 32] = 0
                        mem[_10047 + 64] = 0
                        mem[_10047 + 96] = 0
                        mem[_10027 + 320] = _10047
                        _10052 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_10052] = 0
                        mem[_10052 + 32] = 0
                        mem[_10052 + 64] = 0
                        mem[_10052 + 96] = 0
                        mem[_10027 + 352] = _10052
                        _10054 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_10054] = 0
                        mem[_10054 + 32] = 0
                        mem[_10054 + 64] = 0
                        mem[_10054 + 96] = 0
                        mem[_10027 + 384] = _10054
                        mem[_10027] = 2
                        mem[_10027 + 64] = address(_9566)
                        mem[_10027 + 160] = 0x100000000000000000000000000000000
                        mem[_10027 + 288] = _9784
                        require uint8(idx) < mem[_4513]
                        mem[(32 * uint8(idx)) + _4513 + 32] = _10027
                else:
                    require uint8(idx) < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192]
                    _9541 = mem[(32 * uint8(idx)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224]
                    _9558 = mem[64]
                    mem[64] = mem[64] + 1312
                    mem[_9558] = 0
                    mem[_9558 + 32] = 0
                    mem[_9558 + 64] = 0
                    mem[_9558 + 96] = 0
                    mem[_9558 + 128] = 0
                    mem[_9558 + 160] = 0
                    mem[_9558 + 192] = 0
                    _9567 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9567] = 0
                    mem[_9567 + 32] = 0
                    mem[_9558 + 224] = _9567
                    _9585 = mem[64]
                    mem[64] = mem[64] + 448
                    mem[_9585] = 0
                    _9595 = mem[64]
                    mem[64] = mem[64] + 384
                    mem[_9595] = 0
                    mem[_9595 + 32] = 0
                    mem[_9595 + 64] = 0
                    mem[_9595 + 96] = 0
                    mem[_9595 + 128] = 0
                    mem[_9595 + 160] = 0
                    mem[_9595 + 192] = 0
                    mem[_9595 + 224] = 0
                    mem[_9595 + 256] = 0
                    mem[_9595 + 288] = 0
                    mem[_9595 + 320] = 96
                    mem[_9595 + 352] = 96
                    mem[_9585 + 32] = _9595
                    mem[_9585 + 64] = 96
                    mem[_9558 + 256] = _9585
                    _9630 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_9630] = 0
                    mem[_9630 + 32] = 0
                    mem[_9630 + 64] = 0
                    mem[_9630 + 96] = 0
                    mem[_9630 + 128] = 0
                    mem[_9630 + 160] = 0
                    mem[_9558 + 288] = _9630
                    _9651 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_9651] = 0
                    mem[_9651 + 32] = 0
                    mem[_9651 + 64] = 0
                    mem[_9651 + 96] = 0
                    mem[_9558 + 320] = _9651
                    _9678 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_9678] = 0
                    mem[_9678 + 32] = 0
                    mem[_9678 + 64] = 0
                    mem[_9678 + 96] = 0
                    mem[_9558 + 352] = _9678
                    _9705 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_9705] = 0
                    mem[_9705 + 32] = 0
                    mem[_9705 + 64] = 0
                    mem[_9705 + 96] = 0
                    mem[_9558 + 384] = _9705
                    _9745 = mem[64]
                    mem[64] = mem[64] + 384
                    mem[_9745] = 0
                    mem[_9745 + 32] = 0
                    mem[_9745 + 64] = 0
                    mem[_9745 + 96] = 0
                    mem[_9745 + 128] = 0
                    mem[_9745 + 160] = 0
                    mem[_9745 + 192] = 0
                    mem[_9745 + 224] = 0
                    mem[_9745 + 256] = 0
                    mem[_9745 + 288] = 0
                    mem[_9745 + 320] = 96
                    mem[_9745 + 352] = 96
                    _9785 = mem[64]
                    mem[64] = mem[64] + 384
                    mem[_9785] = 0
                    mem[_9785 + 32] = 0
                    mem[_9785 + 64] = 0
                    mem[_9785 + 96] = 0
                    mem[_9785 + 128] = 0
                    mem[_9785 + 160] = 0
                    mem[_9785 + 192] = 0
                    mem[_9785 + 224] = 0
                    mem[_9785 + 256] = 0
                    mem[_9785 + 288] = 0
                    mem[_9785 + 320] = 96
                    mem[_9785 + 352] = 96
                    _9815 = mem[64]
                    mem[64] = mem[64] + 384
                    mem[_9815] = 0
                    mem[_9815 + 32] = 0
                    mem[_9815 + 64] = 0
                    mem[_9815 + 96] = 0
                    mem[_9815 + 128] = 0
                    mem[_9815 + 160] = 0
                    mem[_9815 + 192] = 0
                    mem[_9815 + 224] = 0
                    mem[_9815 + 256] = 0
                    mem[_9815 + 288] = 0
                    mem[_9815 + 320] = 96
                    mem[_9815 + 352] = 96
                    mem[_9815] = mem[_9541 + 32 len 20]
                    mem[_9815 + 32] = mem[_9541 + 52 len 20]
                    mem[_9815 + 64] = mem[_9541 + 72 len 20]
                    mem[_9815 + 96] = mem[_9541 + 92 len 20]
                    mem[_9815 + 128] = mem[_9541 + 112]
                    mem[_9815 + 160] = mem[_9541 + 144]
                    mem[_9815 + 192] = mem[_9541 + 176]
                    mem[_9815 + 224] = mem[_9541 + 208]
                    mem[_9815 + 256] = mem[_9541 + 240]
                    mem[_9815 + 288] = mem[_9541 + 272]
                    _9832 = mem[64]
                    mem[64] = mem[64] + 68
                    mem[_9832] = 36
                    mem[_9832 + 32] = mem[_9541 + 304]
                    mem[_9832 + 64] = mem[_9541 + 336]
                    mem[_9815 + 320] = _9832
                    _9835 = mem[64]
                    mem[64] = mem[64] + 68
                    mem[_9835] = 36
                    mem[_9835 + 32] = mem[_9541 + 340]
                    mem[_9835 + 64] = mem[_9541 + 372]
                    mem[_9815 + 352] = _9835
                    _9851 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_9851] = 0
                    mem[_9851 + 32] = 0
                    mem[_9851 + 64] = 0
                    _9860 = mem[64]
                    mem[mem[64]] = 0xc75e0a8100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_9815 + 12 len 20]
                    mem[mem[64] + 68] = mem[_9815 + 44 len 20]
                    mem[mem[64] + 100] = mem[_9815 + 76 len 20]
                    mem[mem[64] + 132] = mem[_9815 + 108 len 20]
                    mem[mem[64] + 164] = mem[_9815 + 128]
                    mem[mem[64] + 196] = mem[_9815 + 160]
                    mem[mem[64] + 228] = mem[_9815 + 192]
                    mem[mem[64] + 260] = mem[_9815 + 224]
                    mem[mem[64] + 292] = mem[_9815 + 256]
                    mem[mem[64] + 324] = mem[_9815 + 288]
                    mem[mem[64] + 356] = 384
                    mem[mem[64] + 420] = 36
                    s = 0
                    while s < 36:
                        mem[s + mem[64] + 452] = mem[s + _9832 + 32]
                        s = s + 32
                        continue 
                    mem[mem[64] + 488] = 0
                    _10205 = mem[_9815 + 352]
                    mem[mem[64] + 388] = 480
                    _10222 = mem[_10205]
                    mem[mem[64] + 516] = mem[_10205]
                    s = 0
                    while s < _10222:
                        mem[s + mem[64] + 548] = mem[s + _10205 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_10222) <= _10222:
                        require ext_code.size(sub_560addeaAddress)
                        staticcall sub_560addeaAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _9860 + ceil32(_10222) + -mem[64] + 544]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10999 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _11110 = mem[64]
                        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                        mem[64] = mem[64] + 96
                        mem[_11110] = mem[_10999 + 31 len 1]
                        mem[_11110 + 32] = mem[_10999 + 32]
                        mem[_11110 + 64] = mem[_10999 + 64]
                        _11252 = mem[64]
                        mem[64] = mem[64] + 1312
                        mem[_11252] = 0
                        mem[_11252 + 32] = 0
                        mem[_11252 + 64] = 0
                        mem[_11252 + 96] = 0
                        mem[_11252 + 128] = 0
                        mem[_11252 + 160] = 0
                        mem[_11252 + 192] = 0
                        _11255 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11255] = 0
                        mem[_11255 + 32] = 0
                        mem[_11252 + 224] = _11255
                        _11268 = mem[64]
                        mem[64] = mem[64] + 448
                        mem[_11268] = 0
                        _11272 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_11272] = 0
                        mem[_11272 + 32] = 0
                        mem[_11272 + 64] = 0
                        mem[_11272 + 96] = 0
                        mem[_11272 + 128] = 0
                        mem[_11272 + 160] = 0
                        mem[_11272 + 192] = 0
                        mem[_11272 + 224] = 0
                        mem[_11272 + 256] = 0
                        mem[_11272 + 288] = 0
                        mem[_11272 + 320] = 96
                        mem[_11272 + 352] = 96
                        mem[_11268 + 32] = _11272
                        mem[_11268 + 64] = 96
                        mem[_11252 + 256] = _11268
                        _11281 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_11281] = 0
                        mem[_11281 + 32] = 0
                        mem[_11281 + 64] = 0
                        mem[_11281 + 96] = 0
                        mem[_11281 + 128] = 0
                        mem[_11281 + 160] = 0
                        mem[_11252 + 288] = _11281
                        _11286 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_11286] = 0
                        mem[_11286 + 32] = 0
                        mem[_11286 + 64] = 0
                        mem[_11286 + 96] = 0
                        mem[_11252 + 320] = _11286
                        _11291 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_11291] = 0
                        mem[_11291 + 32] = 0
                        mem[_11291 + 64] = 0
                        mem[_11291 + 96] = 0
                        mem[_11252 + 352] = _11291
                        _11296 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_11296] = 0
                        mem[_11296 + 32] = 0
                        mem[_11296 + 64] = 0
                        mem[_11296 + 96] = 0
                        mem[_11252 + 384] = _11296
                        if mem[_11110 + 31 len 1] != 3:
                            require uint8(idx) < mem[_4513]
                        mem[_11252] = 1
                        mem[_11252 + 160] = mem[_9815 + 160] - mem[_11110 + 64]
                        if not mem[_9815 + 128]:
                            require mem[_9815 + 160] > 0
                            require mem[_9815 + 160]
                            mem[_11252 + 192] = 0 / mem[_9815 + 160]
                            _11329 = mem[_9541 + 376]
                            _11330 = mem[64]
                            mem[64] = mem[64] + mem[_9541 + 376] + 32
                            mem[_11330] = _11329
                            s = 0
                            while s < _11329 + 32:
                                mem[s + _11330 + 32] = mem[_9541 + s + 408]
                                s = s + 32
                                continue 
                            _11404 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_11404] = sub_560addeaAddress
                            mem[_11404 + 32] = _9815
                            mem[_11404 + 64] = _11330
                            mem[_11252 + 256] = _11404
                        else:
                            require 1000000000 * 10^18 * mem[_9815 + 128] / mem[_9815 + 128] == 1000000000 * 10^18
                            require mem[_9815 + 160] > 0
                            require mem[_9815 + 160]
                            mem[_11252 + 192] = 1000000000 * 10^18 * mem[_9815 + 128] / mem[_9815 + 160]
                            _11338 = mem[_9541 + 376]
                            _11339 = mem[64]
                            mem[64] = mem[64] + mem[_9541 + 376] + 32
                            mem[_11339] = _11338
                            s = 0
                            while s < _11338 + 32:
                                mem[s + _11339 + 32] = mem[_9541 + s + 408]
                                s = s + 32
                                continue 
                            _11403 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_11403] = sub_560addeaAddress
                            mem[_11403 + 32] = _9815
                            mem[_11403 + 64] = _11339
                            mem[_11252 + 256] = _11403
                        require uint8(idx) < mem[_4513]
                        mem[(32 * uint8(idx)) + _4513 + 32] = _11252
                    else:
                        mem[_9860 + _10222 + 548] = 0
                        require ext_code.size(sub_560addeaAddress)
                        staticcall sub_560addeaAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _9860 + ceil32(_10222) + -mem[64] + 544]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11017 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _11132 = mem[64]
                        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                        mem[64] = mem[64] + 96
                        mem[_11132] = mem[_11017 + 31 len 1]
                        mem[_11132 + 32] = mem[_11017 + 32]
                        mem[_11132 + 64] = mem[_11017 + 64]
                        _11256 = mem[64]
                        mem[64] = mem[64] + 1312
                        mem[_11256] = 0
                        mem[_11256 + 32] = 0
                        mem[_11256 + 64] = 0
                        mem[_11256 + 96] = 0
                        mem[_11256 + 128] = 0
                        mem[_11256 + 160] = 0
                        mem[_11256 + 192] = 0
                        _11260 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11260] = 0
                        mem[_11260 + 32] = 0
                        mem[_11256 + 224] = _11260
                        _11273 = mem[64]
                        mem[64] = mem[64] + 448
                        mem[_11273] = 0
                        _11276 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_11276] = 0
                        mem[_11276 + 32] = 0
                        mem[_11276 + 64] = 0
                        mem[_11276 + 96] = 0
                        mem[_11276 + 128] = 0
                        mem[_11276 + 160] = 0
                        mem[_11276 + 192] = 0
                        mem[_11276 + 224] = 0
                        mem[_11276 + 256] = 0
                        mem[_11276 + 288] = 0
                        mem[_11276 + 320] = 96
                        mem[_11276 + 352] = 96
                        mem[_11273 + 32] = _11276
                        mem[_11273 + 64] = 96
                        mem[_11256 + 256] = _11273
                        _11283 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_11283] = 0
                        mem[_11283 + 32] = 0
                        mem[_11283 + 64] = 0
                        mem[_11283 + 96] = 0
                        mem[_11283 + 128] = 0
                        mem[_11283 + 160] = 0
                        mem[_11256 + 288] = _11283
                        _11288 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_11288] = 0
                        mem[_11288 + 32] = 0
                        mem[_11288 + 64] = 0
                        mem[_11288 + 96] = 0
                        mem[_11256 + 320] = _11288
                        _11294 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_11294] = 0
                        mem[_11294 + 32] = 0
                        mem[_11294 + 64] = 0
                        mem[_11294 + 96] = 0
                        mem[_11256 + 352] = _11294
                        _11298 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_11298] = 0
                        mem[_11298 + 32] = 0
                        mem[_11298 + 64] = 0
                        mem[_11298 + 96] = 0
                        mem[_11256 + 384] = _11298
                        if mem[_11132 + 31 len 1] != 3:
                            require uint8(idx) < mem[_4513]
                        mem[_11256] = 1
                        mem[_11256 + 160] = mem[_9815 + 160] - mem[_11132 + 64]
                        if not mem[_9815 + 128]:
                            require mem[_9815 + 160] > 0
                            require mem[_9815 + 160]
                            mem[_11256 + 192] = 0 / mem[_9815 + 160]
                            _11333 = mem[_9541 + 376]
                            _11334 = mem[64]
                            mem[64] = mem[64] + mem[_9541 + 376] + 32
                            mem[_11334] = _11333
                            s = 0
                            while s < _11333 + 32:
                                mem[s + _11334 + 32] = mem[_9541 + s + 408]
                                s = s + 32
                                continue 
                            _11406 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_11406] = sub_560addeaAddress
                            mem[_11406 + 32] = _9815
                            mem[_11406 + 64] = _11334
                            mem[_11256 + 256] = _11406
                        else:
                            require 1000000000 * 10^18 * mem[_9815 + 128] / mem[_9815 + 128] == 1000000000 * 10^18
                            require mem[_9815 + 160] > 0
                            require mem[_9815 + 160]
                            mem[_11256 + 192] = 1000000000 * 10^18 * mem[_9815 + 128] / mem[_9815 + 160]
                            _11346 = mem[_9541 + 376]
                            _11347 = mem[64]
                            mem[64] = mem[64] + mem[_9541 + 376] + 32
                            mem[_11347] = _11346
                            s = 0
                            while s < _11346 + 32:
                                mem[s + _11347 + 32] = mem[_9541 + s + 408]
                                s = s + 32
                                continue 
                            _11405 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_11405] = sub_560addeaAddress
                            mem[_11405 + 32] = _9815
                            mem[_11405 + 64] = _11347
                            mem[_11256 + 256] = _11405
                        require uint8(idx) < mem[_4513]
                        mem[(32 * uint8(idx)) + _4513 + 32] = _11256
            idx = idx + 1
            continue 
        _10168 = mem[_4513]
        idx = 0
        while uint8(idx) < _10168:
            if not uint8(idx):
                require 0 < mem[_4513]
                mem[mem[_4513 + 32] + 96] = cd[36]
            else:
                require uint8(idx - 1) < mem[_4513]
                require uint8(idx) < mem[_4513]
                mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] = mem[mem[(32 * uint8(idx - 1)) + _4513 + 32] + 128]
            require uint8(idx) < mem[_4513]
            require uint8(idx) < mem[_4513]
            require uint8(idx) < mem[_4513]
            if mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] > mem[mem[(32 * uint8(idx)) + _4513 + 32] + 160]:
                require uint8(idx) < mem[_4513]
                mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 160]
                s = idx - 1
                while ('signextend', 0, ('var', 1)) >= 0:
                    require uint8(s + 1) < mem[_4513]
                    require uint8(s) < mem[_4513]
                    mem[mem[(32 * uint8(s)) + _4513 + 32] + 128] = mem[mem[(32 * uint8(s + 1)) + _4513 + 32] + 96]
                    require uint8(s) < mem[_4513]
                    require mem[mem[(32 * uint8(s)) + _4513 + 32]] <= 5
                    require uint8(s) < mem[_4513]
                    if not mem[mem[(32 * uint8(s)) + _4513 + 32]]:
                        if not mem[mem[(32 * uint8(s)) + _4513 + 32] + 128]:
                            require mem[mem[(32 * uint8(s)) + _4513 + 32] + 192] > 0
                            require mem[mem[(32 * uint8(s)) + _4513 + 32] + 192]
                            mem[mem[(32 * uint8(s)) + _4513 + 32] + 96] = 0 / mem[mem[(32 * uint8(s)) + _4513 + 32] + 192]
                        else:
                            require 1000000000 * 10^18 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128] / mem[mem[(32 * uint8(s)) + _4513 + 32] + 128] == 1000000000 * 10^18
                            require mem[mem[(32 * uint8(s)) + _4513 + 32] + 192] > 0
                            require mem[mem[(32 * uint8(s)) + _4513 + 32] + 192]
                            mem[mem[(32 * uint8(s)) + _4513 + 32] + 96] = 1000000000 * 10^18 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128] / mem[mem[(32 * uint8(s)) + _4513 + 32] + 192]
                    else:
                        require mem[mem[(32 * uint8(s)) + _4513 + 32]] <= 5
                        require uint8(s) < mem[_4513]
                        if mem[mem[(32 * uint8(s)) + _4513 + 32]] == 1:
                            if not mem[mem[(32 * uint8(s)) + _4513 + 32] + 128]:
                                require mem[mem[(32 * uint8(s)) + _4513 + 32] + 192] > 0
                                require mem[mem[(32 * uint8(s)) + _4513 + 32] + 192]
                                mem[mem[(32 * uint8(s)) + _4513 + 32] + 96] = 0 / mem[mem[(32 * uint8(s)) + _4513 + 32] + 192]
                            else:
                                require 1000000000 * 10^18 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128] / mem[mem[(32 * uint8(s)) + _4513 + 32] + 128] == 1000000000 * 10^18
                                require mem[mem[(32 * uint8(s)) + _4513 + 32] + 192] > 0
                                require mem[mem[(32 * uint8(s)) + _4513 + 32] + 192]
                                mem[mem[(32 * uint8(s)) + _4513 + 32] + 96] = 1000000000 * 10^18 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128] / mem[mem[(32 * uint8(s)) + _4513 + 32] + 192]
                        else:
                            require mem[mem[(32 * uint8(s)) + _4513 + 32]] <= 5
                            require uint8(s) < mem[_4513]
                            if mem[mem[(32 * uint8(s)) + _4513 + 32]] == 2:
                                require (997 * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 288] + 160]) - (997 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128])
                                require (997 * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 288] + 96]) - (997 * 1000 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128] * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 288] + 128] / (997 * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 288] + 160]) - (997 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128]))
                                mem[mem[(32 * uint8(s)) + _4513 + 32] + 96] = 1000 * 1000 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128] * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 288] + 128] / (997 * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 288] + 160]) - (997 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128]) * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 288] + 64] / (997 * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 288] + 96]) - (997 * 1000 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128] * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 288] + 128] / (997 * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 288] + 160]) - (997 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128]))
                            else:
                                require mem[mem[(32 * uint8(s)) + _4513 + 32]] <= 5
                                require uint8(s) < mem[_4513]
                                if mem[mem[(32 * uint8(s)) + _4513 + 32]] == 3:
                                    require (997 * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 320] + 96]) - (997 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128])
                                    mem[mem[(32 * uint8(s)) + _4513 + 32] + 96] = 1000 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128] * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 320] + 64] / (997 * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 320] + 96]) - (997 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128])
                                else:
                                    require mem[mem[(32 * uint8(s)) + _4513 + 32]] <= 5
                                    require uint8(s) < mem[_4513]
                                    if mem[mem[(32 * uint8(s)) + _4513 + 32]] == 4:
                                        require (997 * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 352] + 96]) - (997 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128])
                                        mem[mem[(32 * uint8(s)) + _4513 + 32] + 96] = 1000 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128] * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 352] + 64] / (997 * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 352] + 96]) - (997 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128])
                                    else:
                                        require mem[mem[(32 * uint8(s)) + _4513 + 32]] <= 5
                                        if mem[mem[(32 * uint8(s)) + _4513 + 32]] == 5:
                                            require uint8(s) < mem[_4513]
                                            require (mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 384] + 64] * (-mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 384] + 96] + 10^6)^2) - (10^12 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128])
                                            mem[mem[(32 * uint8(s)) + _4513 + 32] + 96] = 10^12 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128] * mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 384] + 32] / (mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 384] + 64] * (-mem[mem[mem[(32 * uint8(s)) + _4513 + 32] + 384] + 96] + 10^6)^2) - (10^12 * mem[mem[(32 * uint8(s)) + _4513 + 32] + 128])
                    _10168 = mem[_4513]
                    s = s - 1
                    continue 
            require mem[mem[(32 * uint8(idx)) + _4513 + 32]] <= 5
            require uint8(idx) < mem[_4513]
            if not mem[mem[(32 * uint8(idx)) + _4513 + 32]]:
                if not mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96]:
                    mem[mem[(32 * uint8(idx)) + _4513 + 32] + 128] = 0
                else:
                    require mem[mem[(32 * uint8(idx)) + _4513 + 32] + 192] * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] / mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] == mem[mem[(32 * uint8(idx)) + _4513 + 32] + 192]
                    mem[mem[(32 * uint8(idx)) + _4513 + 32] + 128] = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 192] * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] / 1000000000 * 10^18
            else:
                require mem[mem[(32 * uint8(idx)) + _4513 + 32]] <= 5
                require uint8(idx) < mem[_4513]
                if mem[mem[(32 * uint8(idx)) + _4513 + 32]] == 1:
                    if not mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96]:
                        mem[mem[(32 * uint8(idx)) + _4513 + 32] + 128] = 0
                    else:
                        require mem[mem[(32 * uint8(idx)) + _4513 + 32] + 192] * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] / mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] == mem[mem[(32 * uint8(idx)) + _4513 + 32] + 192]
                        mem[mem[(32 * uint8(idx)) + _4513 + 32] + 128] = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 192] * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] / 1000000000 * 10^18
                else:
                    require mem[mem[(32 * uint8(idx)) + _4513 + 32]] <= 5
                    require uint8(idx) < mem[_4513]
                    if mem[mem[(32 * uint8(idx)) + _4513 + 32]] == 2:
                        require (1000 * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 288] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96])
                        require (1000 * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 288] + 128]) + (997 * 997 * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 288] + 96] / (1000 * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 288] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96]))
                        mem[mem[(32 * uint8(idx)) + _4513 + 32] + 128] = 997 * 997 * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 288] + 96] / (1000 * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 288] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96]) * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 288] + 160] / (1000 * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 288] + 128]) + (997 * 997 * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 288] + 96] / (1000 * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 288] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96]))
                    else:
                        require mem[mem[(32 * uint8(idx)) + _4513 + 32]] <= 5
                        require uint8(idx) < mem[_4513]
                        if mem[mem[(32 * uint8(idx)) + _4513 + 32]] == 3:
                            require (1000 * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 320] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96])
                            mem[mem[(32 * uint8(idx)) + _4513 + 32] + 128] = 997 * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 320] + 96] / (1000 * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 320] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96])
                        else:
                            require mem[mem[(32 * uint8(idx)) + _4513 + 32]] <= 5
                            require uint8(idx) < mem[_4513]
                            if mem[mem[(32 * uint8(idx)) + _4513 + 32]] == 4:
                                require (1000 * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 352] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96])
                                mem[mem[(32 * uint8(idx)) + _4513 + 32] + 128] = 997 * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 352] + 96] / (1000 * mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 352] + 64]) + (997 * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96])
                            else:
                                require mem[mem[(32 * uint8(idx)) + _4513 + 32]] <= 5
                                if mem[mem[(32 * uint8(idx)) + _4513 + 32]] == 5:
                                    require uint8(idx) < mem[_4513]
                                    require mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 384] + 32] + mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96]
                                    mem[mem[(32 * uint8(idx)) + _4513 + 32] + 128] = mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 384] + 64] * mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] / mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 384] + 32] + mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96] * (-mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 384] + 96] + 10^6)^2 / 10^12
            _10168 = mem[_4513]
            idx = idx + 1
            continue 
        require 0 < mem[_4513]
        require mem[_4513] - 1 < mem[_4513]
        if mem[mem[(32 * mem[_4513] - 1) + _4513 + 32] + 128] - mem[mem[_4513 + 32] + 96] >= cd[4]:
            _10867 = mem[_4513]
            idx = 0
            while uint8(idx) < _10867:
                require uint8(idx) < mem[_4513]
                require mem[mem[(32 * uint8(idx)) + _4513 + 32]] <= 5
                require uint8(idx) < mem[_4513]
                if not mem[mem[(32 * uint8(idx)) + _4513 + 32]]:
                    _10909 = mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 224]]
                    _10910 = mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 224] + 32]
                    _10911 = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 128]
                    mem[mem[64]] = 'I`dU'
                    mem[mem[64] + 4] = _10910
                    mem[mem[64] + 36] = uint128(_10911)
                    require ext_code.size(address(_10909))
                    call address(_10909).'I`dU' with:
                         gas gas_remaining wei
                        args _10910, uint128(_10911)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require mem[mem[(32 * uint8(idx)) + _4513 + 32]] <= 5
                    require uint8(idx) < mem[_4513]
                    if mem[mem[(32 * uint8(idx)) + _4513 + 32]] != 1:
                        require mem[mem[(32 * uint8(idx)) + _4513 + 32]] <= 5
                        require uint8(idx) < mem[_4513]
                        if mem[mem[(32 * uint8(idx)) + _4513 + 32]] == 2:
                            _11001 = mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 288]]
                            _11003 = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 128]
                            _11004 = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 64]
                            mem[mem[64] + 4] = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96]
                            mem[mem[64] + 36] = _11003 - 100
                            mem[mem[64] + 68] = 1
                            mem[mem[64] + 100] = block.timestamp
                            mem[mem[64] + 132] = address(_11004)
                            require ext_code.size(address(_11001))
                            call address(_11001).tokenToTokenSwapInput(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _11003 - 100, 1, block.timestamp, address(_11004)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                        else:
                            require mem[mem[(32 * uint8(idx)) + _4513 + 32]] <= 5
                            require uint8(idx) < mem[_4513]
                            if mem[mem[(32 * uint8(idx)) + _4513 + 32]] == 3:
                                _11040 = mem[(32 * uint8(idx)) + _4513 + 32]
                                _11066 = mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 320]]
                                _11068 = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 128]
                                mem[mem[64] + 4] = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96]
                                mem[mem[64] + 36] = _11068 - 10
                                mem[mem[64] + 68] = block.timestamp
                                require ext_code.size(address(_11066))
                                call address(_11066).tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _11068 - 10, block.timestamp
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11262 = mem[mem[_11040 + 320] + 32]
                                _11263 = mem[_11040 + 128]
                                mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(_11262))
                                call address(_11262).0xd0e30db0 with:
                                   value _11263 - 10 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require mem[mem[(32 * uint8(idx)) + _4513 + 32]] <= 5
                                require uint8(idx) < mem[_4513]
                                if mem[mem[(32 * uint8(idx)) + _4513 + 32]] != 4:
                                    require mem[mem[(32 * uint8(idx)) + _4513 + 32]] <= 5
                                    if mem[mem[(32 * uint8(idx)) + _4513 + 32]] == 5:
                                        require uint8(idx) < mem[_4513]
                                        _11186 = mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 384]]
                                        _11188 = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 64]
                                        _11189 = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96]
                                        _11190 = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 128]
                                        mem[mem[64] + 4] = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 44 len 20]
                                        mem[mem[64] + 36] = address(_11188)
                                        mem[mem[64] + 68] = _11189
                                        mem[mem[64] + 100] = _11190 - 1000
                                        require ext_code.size(address(_11186))
                                        call address(_11186).convert(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], address(_11188), _11189, _11190 - 1000
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                else:
                                    _11113 = mem[(32 * uint8(idx)) + _4513 + 32]
                                    _11134 = mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 352]]
                                    _11135 = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96]
                                    mem[mem[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11135
                                    require ext_code.size(address(_11134))
                                    call address(_11134).0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args _11135
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11237 = mem[mem[_11113 + 352] + 32]
                                    _11238 = mem[_11113 + 96]
                                    mem[mem[64] + 4] = mem[_11113 + 128] - 10
                                    mem[mem[64] + 36] = block.timestamp
                                    require ext_code.size(address(_11237))
                                    call address(_11237).ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
                                       value _11238 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], block.timestamp
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                    else:
                        _10955 = mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 256]]
                        _10956 = mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 256] + 32]
                        _10957 = mem[mem[(32 * uint8(idx)) + _4513 + 32] + 96]
                        _10958 = mem[mem[mem[(32 * uint8(idx)) + _4513 + 32] + 256] + 64]
                        _10959 = mem[64]
                        mem[mem[64]] = 0x64a3bc1500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 96
                        mem[mem[64] + 100] = mem[_10956 + 12 len 20]
                        mem[mem[64] + 132] = mem[_10956 + 44 len 20]
                        mem[mem[64] + 164] = mem[_10956 + 76 len 20]
                        mem[mem[64] + 196] = mem[_10956 + 108 len 20]
                        mem[mem[64] + 228] = mem[_10956 + 128]
                        mem[mem[64] + 260] = mem[_10956 + 160]
                        mem[mem[64] + 292] = mem[_10956 + 192]
                        mem[mem[64] + 324] = mem[_10956 + 224]
                        mem[mem[64] + 356] = mem[_10956 + 256]
                        mem[mem[64] + 388] = mem[_10956 + 288]
                        _11325 = mem[_10956 + 320]
                        mem[mem[64] + 420] = 384
                        _11326 = mem[_11325]
                        mem[mem[64] + 484] = mem[_11325]
                        s = 0
                        while s < _11326:
                            mem[s + mem[64] + 516] = mem[s + _11325 + 32]
                            _10867 = mem[_4513]
                            s = s + 32
                            continue 
                        if ceil32(_11326) <= _11326:
                            _11415 = mem[_10956 + 352]
                            mem[mem[64] + 452] = ceil32(_11326) + 416
                            _11417 = mem[_11415]
                            mem[mem[64] + ceil32(_11326) + 516] = mem[_11415]
                            s = 0
                            while s < _11417:
                                mem[s + mem[64] + ceil32(_11326) + 548] = mem[s + _11415 + 32]
                                _10867 = mem[_4513]
                                s = s + 32
                                continue 
                            if ceil32(_11417) <= _11417:
                                mem[_10959 + 36] = _10957 - 10
                                mem[_10959 + 68] = ceil32(_11326) + ceil32(_11417) + 544
                                _11439 = mem[_10958]
                                mem[_10959 + ceil32(_11326) + ceil32(_11417) + 548] = mem[_10958]
                                s = 0
                                while s < _11439:
                                    mem[s + _10959 + ceil32(_11326) + ceil32(_11417) + 580] = mem[s + _10958 + 32]
                                    _10867 = mem[_4513]
                                    s = s + 32
                                    continue 
                                if ceil32(_11439) > _11439:
                                    mem[_10959 + ceil32(_11326) + ceil32(_11417) + _11439 + 580] = 0
                                require ext_code.size(address(_10955))
                                call address(_10955).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _10959 + ceil32(_11326) + ceil32(_11417) + ceil32(_11439) + -mem[64] + 576]
                            else:
                                mem[_10959 + ceil32(_11326) + _11417 + 548] = 0
                                mem[_10959 + 36] = _10957 - 10
                                mem[_10959 + 68] = ceil32(_11326) + ceil32(_11417) + 544
                                _11441 = mem[_10958]
                                mem[_10959 + ceil32(_11326) + ceil32(_11417) + 548] = mem[_10958]
                                s = 0
                                while s < _11441:
                                    mem[s + _10959 + ceil32(_11326) + ceil32(_11417) + 580] = mem[s + _10958 + 32]
                                    _10867 = mem[_4513]
                                    s = s + 32
                                    continue 
                                if ceil32(_11441) > _11441:
                                    mem[_10959 + ceil32(_11326) + ceil32(_11417) + _11441 + 580] = 0
                                require ext_code.size(address(_10955))
                                call address(_10955).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _10959 + ceil32(_11326) + ceil32(_11417) + ceil32(_11441) + -mem[64] + 576]
                        else:
                            mem[mem[64] + _11326 + 516] = 0
                            _11416 = mem[_10956 + 352]
                            mem[mem[64] + 452] = ceil32(_11326) + 416
                            _11418 = mem[_11416]
                            mem[mem[64] + ceil32(_11326) + 516] = mem[_11416]
                            s = 0
                            while s < _11418:
                                mem[s + mem[64] + ceil32(_11326) + 548] = mem[s + _11416 + 32]
                                _10867 = mem[_4513]
                                s = s + 32
                                continue 
                            if ceil32(_11418) <= _11418:
                                mem[mem[64] + 36] = _10957 - 10
                                mem[mem[64] + 68] = ceil32(_11326) + ceil32(_11418) + 544
                                _11440 = mem[_10958]
                                mem[mem[64] + ceil32(_11326) + ceil32(_11418) + 548] = mem[_10958]
                                s = 0
                                while s < _11440:
                                    mem[s + mem[64] + ceil32(_11326) + ceil32(_11418) + 580] = mem[s + _10958 + 32]
                                    _10867 = mem[_4513]
                                    s = s + 32
                                    continue 
                                if ceil32(_11440) > _11440:
                                    mem[mem[64] + ceil32(_11326) + ceil32(_11418) + _11440 + 580] = 0
                                require ext_code.size(address(_10955))
                                call address(_10955).fillOrKillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                                     gas gas_remaining wei
                                    args 96, _10957 - 10, ceil32(_11326) + ceil32(_11418) + 544, mem[mem[64] + 100 len 320], 384, ceil32(_11326) + 416, mem[mem[64] + 484 len _11326 + 32], 0, mem[mem[64] + _11326 + 548 len ceil32(_11326) + ceil32(_11418) + ceil32(_11440) + -_11326 + 32]
                            else:
                                mem[mem[64] + ceil32(_11326) + _11418 + 548] = 0
                                mem[mem[64] + 36] = _10957 - 10
                                mem[mem[64] + 68] = ceil32(_11326) + ceil32(_11418) + 544
                                _11442 = mem[_10958]
                                mem[mem[64] + ceil32(_11326) + ceil32(_11418) + 548] = mem[_10958]
                                s = 0
                                while s < _11442:
                                    mem[s + mem[64] + ceil32(_11326) + ceil32(_11418) + 580] = mem[s + _10958 + 32]
                                    _10867 = mem[_4513]
                                    s = s + 32
                                    continue 
                                if ceil32(_11442) > _11442:
                                    mem[_10959 + ceil32(_11326) + ceil32(_11418) + _11442 + 580] = 0
                                require ext_code.size(address(_10955))
                                call address(_10955).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _10959 + ceil32(_11326) + ceil32(_11418) + ceil32(_11442) + -mem[64] + 576]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                _10867 = mem[_4513]
                idx = idx + 1
                continue 
}



}
