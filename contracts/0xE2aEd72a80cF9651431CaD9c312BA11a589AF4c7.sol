contract main {




// =====================  Runtime code  =====================


uint256 sub_531c2ca9;
uint256 sub_a7b06f56;
uint8 stor12; offset 160
uint8 stor12; offset 168
address sub_91a816daAddress;
mapping of struct stor99;

function sub_333af53f(?) {
    return address(stor[sha3(sha3(sha3('adminSlot')))].field_0)
}

function sub_3d22fd8f(?) {
    require calldata.size - 4 >= 32
    return address(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][arg1].field_0)
}

function sub_531c2ca9(?) {
    return sub_531c2ca9
}

function sub_5b13755e(?) {
    return uint256(stor[sha3(sha3(sha3('outOfService')))].field_0)
}

function lockAll() {
    return bool(uint8(stor12.field_168))
}

function sub_91a816da(?) {
    return sub_91a816daAddress
}

function sub_a7b06f56(?) {
    return sub_a7b06f56
}

function sub_b4867a42(?) {
    return uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)
}

function lockOpen() {
    return bool(uint8(stor12.field_160))
}

function sub_df2e5507(?) {
    require calldata.size - 4 >= 32
    return uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0)
}

function sub_df61dbbb(?) {
    return uint256(stor[sha3(sha3(sha3('revertMessage')))].field_0)
}

function sub_5cd5d777(?) {
    require calldata.size - 4 >= 32
    if address(stor[sha3(sha3(sha3('adminSlot')))].field_0) != msg.sender:
        revert with 0, 'only system admin'
    uint256(stor[sha3(sha3(sha3('outOfService')))].field_0) = arg1
}

function sub_4ecf5579(?) {
    require calldata.size - 4 >= 32
    if address(stor[sha3(sha3(sha3('adminSlot')))].field_0) != msg.sender:
        revert with 0, 'only system admin'
    uint256(stor[sha3(sha3(sha3('revertMessage')))].field_0) = arg1
}

function sub_a8f60688(?) {
    mem[128] = 'delegatesEnhancedMappingSlot'
    mem[96] = 28
    mem[188] = sha3('delegatesEnhancedMappingSlot')
    mem[156] = 32
    mem[252] = sha3(sha3('delegatesEnhancedMappingSlot'))
    mem[220] = 32
    mem[284] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)
    mem[64] = (32 * uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)) + 316
    if not uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0):
        idx = 0
        while idx < uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0):
            _57 = mem[64]
            mem[mem[64] + 32] = 'delegatesEnhancedMappingSlot'
            _62 = mem[64]
            mem[mem[64]] = 28
            mem[64] = mem[64] + 60
            mem[_57 + 92] = sha3(mem[_62 + 32 len mem[_62]])
            mem[_57 + 60] = 32
            mem[64] = _57 + 124
            mem[_57 + 156] = sha3(mem[_57 + 92])
            mem[_57 + 124] = 32
            mem[_57 + 220] = idx + 1
            mem[_57 + 252] = sha3(sha3(mem[_57 + 92]))
            mem[_57 + 188] = 64
            mem[64] = _57 + 284
            require idx < mem[284]
            mem[(32 * idx) + 316] = address(stor[mem[_57 + 252]][idx + 1].field_0)
            idx = idx + 1
            continue 
        _56 = mem[64]
        mem[mem[64]] = 32
        _60 = mem[284]
        mem[mem[64] + 32] = mem[284]
        idx = 0
        s = 316
        t = mem[64] + 64
        while idx < _60:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _56 + (32 * _60) + -mem[64] + 64
    mem[316 len 32 * uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)] = code.data[7943 len 32 * uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)]
    idx = 0
    while idx < uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0):
        _59 = mem[64]
        mem[mem[64] + 32] = 'delegatesEnhancedMappingSlot'
        _66 = mem[64]
        mem[mem[64]] = 28
        mem[64] = mem[64] + 60
        mem[_59 + 92] = sha3(mem[_66 + 32 len mem[_66]])
        mem[_59 + 60] = 32
        mem[64] = _59 + 124
        mem[_59 + 156] = sha3(mem[_59 + 92])
        mem[_59 + 124] = 32
        mem[_59 + 220] = idx + 1
        mem[_59 + 252] = sha3(sha3(mem[_59 + 92]))
        mem[_59 + 188] = 64
        mem[64] = _59 + 284
        require idx < mem[284]
        mem[(32 * idx) + 316] = address(stor[mem[_59 + 252]][idx + 1].field_0)
        idx = idx + 1
        continue 
    _58 = mem[64]
    mem[mem[64]] = 32
    _61 = mem[284]
    mem[mem[64] + 32] = mem[284]
    idx = 0
    s = 316
    t = mem[64] + 64
    while idx < _61:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _58 + (32 * _61) + -mem[64] + 64
}

function sub_a82fe170(?) {
    require calldata.size - 4 >= 32
    if address(stor[sha3(sha3(sha3('adminSlot')))].field_0) != msg.sender:
        revert with 0, 'only system admin'
    if not arg1:
        revert with 0, 'sysAddDelegate, you can't set 0x00 to delegate'
    if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0):
        revert with 0, 'adding existing address to delegate pool is forbidden'
    if arg1 == uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1].field_0):
        if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1 != uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0):
            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0) = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1
            if not uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1:
                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
            else:
                if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0):
                else:
                    uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)++
    else:
        address(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1].field_0) = arg1
        Mask(96, 0, stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1].field_160) = 0
        if not arg1:
            uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
            if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1 != uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0):
                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0) = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1
                if not uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1:
                    uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                else:
                    if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0):
                    else:
                        uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)++
        else:
            if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1].field_0):
            else:
                uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)++
            if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1 != uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0):
                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0) = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1
                if not uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1:
                    uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                else:
                    if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0):
                    else:
                        uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)++
    emit 0x80e61422: 1, arg1
}

function _fallback() payable {
    mem[128] = 'outOfService'
    mem[96] = 12
    mem[172] = sha3('outOfService')
    mem[140] = 32
    mem[236] = sha3(sha3('outOfService'))
    mem[204] = 32
    if uint256(stor[sha3(sha3(sha3('outOfService')))].field_0) == 1:
        require 1 == uint256(stor[sha3(sha3(sha3('revertMessage')))].field_0)
        revert with 0, 32, 33, 'Proxy is out-of-service right no', 'w', 0, 0 / 0.00390625, 0
    mem[300] = 'delegatesEnhancedMappingSlot'
    mem[268] = 28
    mem[360] = sha3('delegatesEnhancedMappingSlot')
    mem[328] = 32
    mem[424] = sha3(sha3('delegatesEnhancedMappingSlot'))
    mem[392] = 32
    mem[64] = 456
    idx = 0
    s = 96
    s = 0
    while idx < uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0):
        _240 = mem[64]
        mem[mem[64] + 32] = 'delegatesEnhancedMappingSlot'
        _244 = mem[64]
        mem[mem[64]] = 28
        mem[64] = mem[64] + 60
        mem[_240 + 92] = sha3(mem[_244 + 32 len mem[_244]])
        mem[_240 + 60] = 32
        mem[64] = _240 + 124
        mem[_240 + 156] = sha3(mem[_240 + 92])
        mem[_240 + 124] = 32
        mem[_240 + 220] = idx + 1
        mem[_240 + 252] = sha3(sha3(mem[_240 + 92]))
        mem[_240 + 188] = 64
        mem[_240 + 284] = calldata.size
        mem[_240 + 316 len calldata.size] = call.data[0 len calldata.size]
        mem[_240 + calldata.size + 316] = 0
        if not address(stor[sha3(sha3(mem[_240 + 92]))][idx + 1].field_0):
            revert with 0, 'delegateTo must not be 0x00'
        s = 0
        while s < calldata.size:
            mem[s + _240 + ceil32(calldata.size) + 316] = mem[s + _240 + 316]
            s = s + 32
            continue 
        if ceil32(calldata.size) > calldata.size:
            mem[calldata.size + _240 + ceil32(calldata.size) + 316] = 0
        delegate address(stor[sha3(sha3(mem[_240 + 92]))][idx + 1].field_0).mem[_240 + ceil32(calldata.size) + 316 len 4] with:
             gas gas_remaining wei
            args mem[_240 + ceil32(calldata.size) + 320 len calldata.size - 4]
        if not return_data.size:
            if bool(delegate.return_code) == 1:
                mem[_240 + ceil32(calldata.size) + 348] = '404-method-not-found'
                mem[_240 + ceil32(calldata.size) + 316] = 20
                mem[_240 + ceil32(calldata.size) + 400] = sha3('404-method-not-found')
                mem[_240 + ceil32(calldata.size) + 368] = 32
                mem[_240 + ceil32(calldata.size) + 464] = sha3(sha3('404-method-not-found'))
                mem[_240 + ceil32(calldata.size) + 432] = 32
                mem[_240 + ceil32(calldata.size) + 528] = sha3(sha3(sha3('404-method-not-found')))
                mem[_240 + ceil32(calldata.size) + 496] = 32
                mem[64] = _240 + ceil32(calldata.size) + 560
                s = 0
                while s < 32:
                    mem[s + _240 + ceil32(calldata.size) + 560] = mem[s + _240 + ceil32(calldata.size) + 528]
                    s = s + 32
                    continue 
                if sha3(mem[128 len mem[96]]) == sha3(mem[_240 + ceil32(calldata.size) + 560]):
                    idx = idx + 1
                    s = 96
                    s = 1
                    continue 
            if not delegate.return_code:
                revert with memory
                  from 128
                   len mem[96]
            return memory
              from 128
               len mem[96]
        mem[_240 + ceil32(calldata.size) + 316] = return_data.size
        mem[_240 + ceil32(calldata.size) + 348 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if bool(delegate.return_code) == 1:
            mem[_240 + ceil32(calldata.size) + ceil32(return_data.size) + 349] = '404-method-not-found'
            mem[_240 + ceil32(calldata.size) + ceil32(return_data.size) + 317] = 20
            mem[_240 + ceil32(calldata.size) + ceil32(return_data.size) + 401] = sha3('404-method-not-found')
            mem[_240 + ceil32(calldata.size) + ceil32(return_data.size) + 369] = 32
            mem[_240 + ceil32(calldata.size) + ceil32(return_data.size) + 465] = sha3(sha3('404-method-not-found'))
            mem[_240 + ceil32(calldata.size) + ceil32(return_data.size) + 433] = 32
            mem[_240 + ceil32(calldata.size) + ceil32(return_data.size) + 529] = sha3(sha3(sha3('404-method-not-found')))
            mem[_240 + ceil32(calldata.size) + ceil32(return_data.size) + 497] = 32
            mem[64] = _240 + ceil32(calldata.size) + ceil32(return_data.size) + 561
            s = 0
            while s < 32:
                mem[s + _240 + ceil32(calldata.size) + ceil32(return_data.size) + 561] = mem[s + _240 + ceil32(calldata.size) + ceil32(return_data.size) + 529]
                s = s + 32
                continue 
            if sha3(ext_call.return_data[0 len return_data.size]) == sha3(mem[_240 + ceil32(calldata.size) + ceil32(return_data.size) + 561]):
                idx = idx + 1
                s = _240 + ceil32(calldata.size) + 316
                s = 1
                continue 
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    _241 = mem[64]
    mem[mem[64] + 32] = 'revertMessage'
    _248 = mem[64]
    mem[mem[64]] = 13
    mem[64] = mem[64] + 45
    mem[_241 + 77] = sha3(mem[_248 + 32 len mem[_248]])
    mem[64] = _241 + 109
    require 1 == uint256(stor[sha3(sha3(mem[_241 + 77]))].field_0)
    mem[_241 + 205] = call.func_hash
    mem[_241 + 209] = 8
    mem[_241 + 241 len 8] = code.data[7943 len 8]
    mem[64] = _241 + 337
    mem[_241 + 273] = 16
    mem[_241 + 305] = '0123456789abcdef'
    idx = 0
    while idx < 4:
        require idx < 4
        require Mask(4, 252, mem[idx + _241 + 205]) >> 252 < 16
        require Mask(4, 248, mem[idx + _241 + 205]) >> 248 < 16
        _455 = mem[(Mask(4, 248, mem[idx + _241 + 205]) >> 248) + _241 + 305]
        require 2 * idx < 8
        mem[(2 * idx) + _241 + 241 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 305, ('mask_shl', 4, 252, -252, ('mem', ('range', ('add', 205, ('var', 0), ('var', '_241')), 32))), ('var', '_241')), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 305, ('mask_shl', 4, 252, -252, ('mem', ('range', ('add', 205, ('var', 0), ('var', '_241')), 32))), ('var', '_241')), 32))), 0) - 256
        require (2 * idx) + 1 < 8
        mem[(2 * idx) + _241 + 242 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('var', '_455')), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('var', '_455')), 0) - 256
        idx = idx + 1
        continue 
    revert with 0, 32, 38, 'function selector not found : ', mem[_241 + 241 len 8], 0, 0 >> 48, 0
}

function sub_4522bdc2(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 4).length) + 160] = 'adminSlot'
    mem[(32 * ('cd', 4).length) + 128] = 9
    mem[(32 * ('cd', 4).length) + 201] = sha3('adminSlot')
    mem[(32 * ('cd', 4).length) + 169] = 32
    mem[(32 * ('cd', 4).length) + 265] = sha3(sha3('adminSlot'))
    mem[(32 * ('cd', 4).length) + 233] = 32
    mem[64] = (32 * ('cd', 4).length) + 297
    if address(stor[sha3(sha3(sha3('adminSlot')))].field_0) != msg.sender:
        revert with 0, 'only system admin'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < mem[96]
        _274 = mem[(32 * idx) + 128]
        _275 = mem[64]
        mem[mem[64] + 32] = 'adminSlot'
        _276 = mem[64]
        mem[mem[64]] = 9
        mem[64] = mem[64] + 41
        mem[_275 + 73] = sha3(mem[_276 + 32 len mem[_276]])
        mem[_275 + 41] = 32
        mem[64] = _275 + 105
        mem[_275 + 137] = sha3(mem[_275 + 73])
        mem[_275 + 105] = 32
        if address(stor[sha3(sha3(mem[_275 + 73]))].field_0) != msg.sender:
            revert with 0, 'only system admin'
        if not address(_274):
            revert with 0, 'sysAddDelegate, you can't set 0x00 to delegate'
        mem[_275 + 201] = 'delegatesIndexMappingSlot'
        mem[_275 + 169] = 25
        mem[_275 + 258] = sha3('delegatesIndexMappingSlot')
        mem[_275 + 226] = 32
        mem[_275 + 322] = sha3(sha3('delegatesIndexMappingSlot'))
        mem[_275 + 290] = 32
        mem[_275 + 386] = address(_274)
        mem[_275 + 418] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
        mem[_275 + 354] = 64
        if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_274)].field_0):
            revert with 0, 'adding existing address to delegate pool is forbidden'
        mem[_275 + 482] = 'delegatesEnhancedMappingSlot'
        mem[_275 + 450] = 28
        mem[_275 + 542] = sha3('delegatesEnhancedMappingSlot')
        mem[_275 + 510] = 32
        mem[_275 + 606] = sha3(sha3('delegatesEnhancedMappingSlot'))
        mem[_275 + 574] = 32
        mem[_275 + 670] = 'delegatesEnhancedMappingSlot'
        mem[_275 + 638] = 28
        mem[_275 + 730] = sha3('delegatesEnhancedMappingSlot')
        mem[_275 + 698] = 32
        mem[_275 + 794] = sha3(sha3('delegatesEnhancedMappingSlot'))
        mem[_275 + 762] = 32
        mem[_275 + 858] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1
        mem[_275 + 890] = sha3(sha3(sha3('delegatesEnhancedMappingSlot')))
        mem[_275 + 826] = 64
        if address(_274) == uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1].field_0):
            mem[_275 + 954] = 'delegatesIndexMappingSlot'
            mem[_275 + 922] = 25
            mem[_275 + 1011] = sha3('delegatesIndexMappingSlot')
            mem[_275 + 979] = 32
            mem[_275 + 1075] = sha3(sha3('delegatesIndexMappingSlot'))
            mem[_275 + 1043] = 32
            mem[_275 + 1139] = address(_274)
            mem[_275 + 1171] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
            mem[_275 + 1107] = 64
            mem[64] = _275 + 1203
            if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1 != uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_274)].field_0):
                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_274)].field_0) = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1
                if not uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1:
                    uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                else:
                    if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_274)].field_0):
                    else:
                        uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)++
        else:
            address(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1].field_0) = address(_274)
            Mask(96, 0, stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1].field_160) = 0
            if not address(_274):
                uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                mem[_275 + 954] = 'delegatesIndexMappingSlot'
                mem[_275 + 922] = 25
                mem[_275 + 1011] = sha3('delegatesIndexMappingSlot')
                mem[_275 + 979] = 32
                mem[_275 + 1075] = sha3(sha3('delegatesIndexMappingSlot'))
                mem[_275 + 1043] = 32
                mem[_275 + 1139] = address(_274)
                mem[_275 + 1171] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
                mem[_275 + 1107] = 64
                mem[64] = _275 + 1203
                if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1 != uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_274)].field_0):
                    uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_274)].field_0) = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1
                    if not uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1:
                        uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                    else:
                        if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_274)].field_0):
                        else:
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)++
            else:
                if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1].field_0):
                else:
                    uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)++
                mem[_275 + 954] = 'delegatesIndexMappingSlot'
                mem[_275 + 922] = 25
                mem[_275 + 1011] = sha3('delegatesIndexMappingSlot')
                mem[_275 + 979] = 32
                mem[_275 + 1075] = sha3(sha3('delegatesIndexMappingSlot'))
                mem[_275 + 1043] = 32
                mem[_275 + 1139] = address(_274)
                mem[_275 + 1171] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
                mem[_275 + 1107] = 64
                mem[64] = _275 + 1203
                if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1 != uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_274)].field_0):
                    uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_274)].field_0) = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1
                    if not uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1:
                        uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                    else:
                        if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_274)].field_0):
                        else:
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)++
        mem[_275 + 1203] = 1
        emit 0x80e61422: 1, address(_274)
        idx = idx + 1
        continue 
}

function sub_dbab5721(?) {
    require calldata.size - 4 >= 32
    if address(stor[sha3(sha3(sha3('adminSlot')))].field_0) != msg.sender:
        revert with 0, 'only system admin'
    if not uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0):
        revert with 0, 'deleting wrong address from delegate pool is forbidden'
    if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0) == uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0):
        if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
            uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
            uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
        if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0) != 0:
            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0) = 0
            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
    else:
        if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) == uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0)].field_0):
            if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0) == uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)].field_0):
                if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
                    uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
                    uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0) != 0:
                    uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0) = 0
                    uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
            else:
                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)].field_0) = uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0)
                if not uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0):
                    uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                    if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
                        uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
                        uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                    if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0) != 0:
                        uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0) = 0
                        uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                else:
                    if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)].field_0):
                    else:
                        uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)++
                    if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
                        uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
                        uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                    if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0) != 0:
                        uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0) = 0
                        uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
        else:
            uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0)].field_0) = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)
            if not uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0):
                uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0) == uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)].field_0):
                    if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
                        uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
                        uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                    if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0) != 0:
                        uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0) = 0
                        uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                else:
                    uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)].field_0) = uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0)
                    if not uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0):
                        uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                        if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
                            uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
                            uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                        if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0) != 0:
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0) = 0
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                    else:
                        if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)].field_0):
                        else:
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)++
                        if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
                            uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
                            uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                        if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0) != 0:
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0) = 0
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
            else:
                if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0)].field_0):
                else:
                    uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)++
                if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0) == uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)].field_0):
                    if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
                        uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
                        uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                    if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0) != 0:
                        uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0) = 0
                        uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                else:
                    uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)].field_0) = uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0)
                    if not uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0):
                        uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                        if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
                            uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
                            uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                        if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0) != 0:
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0) = 0
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                    else:
                        if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)].field_0):
                        else:
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)++
                        if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
                            uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
                            uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                        if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0) != 0:
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(arg1)].field_0) = 0
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
    emit 0x80e61422: 0, arg1
}

function sub_aa528bfa(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 4).length) + 160] = 'adminSlot'
    mem[(32 * ('cd', 4).length) + 128] = 9
    mem[(32 * ('cd', 4).length) + 201] = sha3('adminSlot')
    mem[(32 * ('cd', 4).length) + 169] = 32
    mem[(32 * ('cd', 4).length) + 265] = sha3(sha3('adminSlot'))
    mem[(32 * ('cd', 4).length) + 233] = 32
    mem[64] = (32 * ('cd', 4).length) + 297
    if address(stor[sha3(sha3(sha3('adminSlot')))].field_0) != msg.sender:
        revert with 0, 'only system admin'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < mem[96]
        _1208 = mem[(32 * idx) + 128]
        _1209 = mem[64]
        mem[mem[64] + 32] = 'adminSlot'
        _1210 = mem[64]
        mem[mem[64]] = 9
        mem[64] = mem[64] + 41
        mem[_1209 + 73] = sha3(mem[_1210 + 32 len mem[_1210]])
        mem[_1209 + 41] = 32
        mem[64] = _1209 + 105
        mem[_1209 + 137] = sha3(mem[_1209 + 73])
        mem[_1209 + 105] = 32
        if address(stor[sha3(sha3(mem[_1209 + 73]))].field_0) != msg.sender:
            revert with 0, 'only system admin'
        mem[_1209 + 201] = 'delegatesIndexMappingSlot'
        mem[_1209 + 169] = 25
        mem[_1209 + 258] = sha3('delegatesIndexMappingSlot')
        mem[_1209 + 226] = 32
        mem[_1209 + 322] = sha3(sha3('delegatesIndexMappingSlot'))
        mem[_1209 + 290] = 32
        mem[_1209 + 386] = address(_1208)
        mem[_1209 + 418] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
        mem[_1209 + 354] = 64
        if not uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0):
            revert with 0, 'deleting wrong address from delegate pool is forbidden'
        mem[_1209 + 482] = 'delegatesEnhancedMappingSlot'
        mem[_1209 + 450] = 28
        mem[_1209 + 542] = sha3('delegatesEnhancedMappingSlot')
        mem[_1209 + 510] = 32
        mem[_1209 + 606] = sha3(sha3('delegatesEnhancedMappingSlot'))
        mem[_1209 + 574] = 32
        mem[_1209 + 670] = 'delegatesEnhancedMappingSlot'
        mem[_1209 + 638] = 28
        mem[_1209 + 730] = sha3('delegatesEnhancedMappingSlot')
        mem[_1209 + 698] = 32
        mem[_1209 + 794] = sha3(sha3('delegatesEnhancedMappingSlot'))
        mem[_1209 + 762] = 32
        mem[_1209 + 858] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)
        mem[_1209 + 890] = sha3(sha3(sha3('delegatesEnhancedMappingSlot')))
        mem[_1209 + 826] = 64
        mem[_1209 + 954] = 'delegatesEnhancedMappingSlot'
        mem[_1209 + 922] = 28
        mem[_1209 + 1014] = sha3('delegatesEnhancedMappingSlot')
        mem[_1209 + 982] = 32
        mem[_1209 + 1078] = sha3(sha3('delegatesEnhancedMappingSlot'))
        mem[_1209 + 1046] = 32
        if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0) == uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0):
            mem[_1209 + 1142] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)
            mem[_1209 + 1174] = sha3(sha3(sha3('delegatesEnhancedMappingSlot')))
            mem[_1209 + 1110] = 64
            if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
                uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
                uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
            mem[_1209 + 1238] = 'delegatesIndexMappingSlot'
            mem[_1209 + 1206] = 25
            mem[_1209 + 1295] = sha3('delegatesIndexMappingSlot')
            mem[_1209 + 1263] = 32
            mem[_1209 + 1359] = sha3(sha3('delegatesIndexMappingSlot'))
            mem[_1209 + 1327] = 32
            mem[_1209 + 1423] = address(_1208)
            mem[_1209 + 1455] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
            mem[_1209 + 1391] = 64
            mem[64] = _1209 + 1487
            if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0) != 0:
                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0) = 0
                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
            mem[_1209 + 1487] = 0
        else:
            mem[_1209 + 1142] = uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0)
            mem[_1209 + 1174] = sha3(sha3(sha3('delegatesEnhancedMappingSlot')))
            mem[_1209 + 1110] = 64
            if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) == uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0)].field_0):
                mem[_1209 + 1238] = 'delegatesIndexMappingSlot'
                mem[_1209 + 1206] = 25
                mem[_1209 + 1295] = sha3('delegatesIndexMappingSlot')
                mem[_1209 + 1263] = 32
                mem[_1209 + 1359] = sha3(sha3('delegatesIndexMappingSlot'))
                mem[_1209 + 1327] = 32
                mem[_1209 + 1423] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)
                mem[_1209 + 1455] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
                mem[_1209 + 1391] = 64
                if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0) == uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)].field_0):
                    mem[_1209 + 1519] = 'delegatesEnhancedMappingSlot'
                    mem[_1209 + 1487] = 28
                    mem[_1209 + 1579] = sha3('delegatesEnhancedMappingSlot')
                    mem[_1209 + 1547] = 32
                    mem[_1209 + 1643] = sha3(sha3('delegatesEnhancedMappingSlot'))
                    mem[_1209 + 1611] = 32
                    mem[_1209 + 1707] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)
                    mem[_1209 + 1739] = sha3(sha3(sha3('delegatesEnhancedMappingSlot')))
                    mem[_1209 + 1675] = 64
                    if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
                        uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
                        uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                    mem[_1209 + 1803] = 'delegatesIndexMappingSlot'
                    mem[_1209 + 1771] = 25
                    mem[_1209 + 1860] = sha3('delegatesIndexMappingSlot')
                    mem[_1209 + 1828] = 32
                    mem[_1209 + 1924] = sha3(sha3('delegatesIndexMappingSlot'))
                    mem[_1209 + 1892] = 32
                    mem[_1209 + 1988] = address(_1208)
                    mem[_1209 + 2020] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
                    mem[_1209 + 1956] = 64
                    mem[64] = _1209 + 2052
                    if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0) != 0:
                        uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0) = 0
                        uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                else:
                    uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)].field_0) = uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0)
                    if not uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0):
                        uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                        mem[_1209 + 1519] = 'delegatesEnhancedMappingSlot'
                        mem[_1209 + 1487] = 28
                        mem[_1209 + 1579] = sha3('delegatesEnhancedMappingSlot')
                        mem[_1209 + 1547] = 32
                        mem[_1209 + 1643] = sha3(sha3('delegatesEnhancedMappingSlot'))
                        mem[_1209 + 1611] = 32
                        mem[_1209 + 1707] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)
                        mem[_1209 + 1739] = sha3(sha3(sha3('delegatesEnhancedMappingSlot')))
                        mem[_1209 + 1675] = 64
                        if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
                            uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
                            uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                        mem[_1209 + 1803] = 'delegatesIndexMappingSlot'
                        mem[_1209 + 1771] = 25
                        mem[_1209 + 1860] = sha3('delegatesIndexMappingSlot')
                        mem[_1209 + 1828] = 32
                        mem[_1209 + 1924] = sha3(sha3('delegatesIndexMappingSlot'))
                        mem[_1209 + 1892] = 32
                        mem[_1209 + 1988] = address(_1208)
                        mem[_1209 + 2020] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
                        mem[_1209 + 1956] = 64
                        mem[64] = _1209 + 2052
                        if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0) != 0:
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0) = 0
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                    else:
                        if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)].field_0):
                        else:
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)++
                        mem[_1209 + 1519] = 'delegatesEnhancedMappingSlot'
                        mem[_1209 + 1487] = 28
                        mem[_1209 + 1579] = sha3('delegatesEnhancedMappingSlot')
                        mem[_1209 + 1547] = 32
                        mem[_1209 + 1643] = sha3(sha3('delegatesEnhancedMappingSlot'))
                        mem[_1209 + 1611] = 32
                        mem[_1209 + 1707] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)
                        mem[_1209 + 1739] = sha3(sha3(sha3('delegatesEnhancedMappingSlot')))
                        mem[_1209 + 1675] = 64
                        if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
                            uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
                            uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                        mem[_1209 + 1803] = 'delegatesIndexMappingSlot'
                        mem[_1209 + 1771] = 25
                        mem[_1209 + 1860] = sha3('delegatesIndexMappingSlot')
                        mem[_1209 + 1828] = 32
                        mem[_1209 + 1924] = sha3(sha3('delegatesIndexMappingSlot'))
                        mem[_1209 + 1892] = 32
                        mem[_1209 + 1988] = address(_1208)
                        mem[_1209 + 2020] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
                        mem[_1209 + 1956] = 64
                        mem[64] = _1209 + 2052
                        if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0) != 0:
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0) = 0
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
            else:
                uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0)].field_0) = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)
                if not uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0):
                    uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                    mem[_1209 + 1238] = 'delegatesIndexMappingSlot'
                    mem[_1209 + 1206] = 25
                    mem[_1209 + 1295] = sha3('delegatesIndexMappingSlot')
                    mem[_1209 + 1263] = 32
                    mem[_1209 + 1359] = sha3(sha3('delegatesIndexMappingSlot'))
                    mem[_1209 + 1327] = 32
                    mem[_1209 + 1423] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)
                    mem[_1209 + 1455] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
                    mem[_1209 + 1391] = 64
                    if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0) == uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)].field_0):
                        mem[_1209 + 1519] = 'delegatesEnhancedMappingSlot'
                        mem[_1209 + 1487] = 28
                        mem[_1209 + 1579] = sha3('delegatesEnhancedMappingSlot')
                        mem[_1209 + 1547] = 32
                        mem[_1209 + 1643] = sha3(sha3('delegatesEnhancedMappingSlot'))
                        mem[_1209 + 1611] = 32
                        mem[_1209 + 1707] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)
                        mem[_1209 + 1739] = sha3(sha3(sha3('delegatesEnhancedMappingSlot')))
                        mem[_1209 + 1675] = 64
                        if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
                            uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
                            uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                        mem[_1209 + 1803] = 'delegatesIndexMappingSlot'
                        mem[_1209 + 1771] = 25
                        mem[_1209 + 1860] = sha3('delegatesIndexMappingSlot')
                        mem[_1209 + 1828] = 32
                        mem[_1209 + 1924] = sha3(sha3('delegatesIndexMappingSlot'))
                        mem[_1209 + 1892] = 32
                        mem[_1209 + 1988] = address(_1208)
                        mem[_1209 + 2020] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
                        mem[_1209 + 1956] = 64
                        mem[64] = _1209 + 2052
                        if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0) != 0:
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0) = 0
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                    else:
                        uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)].field_0) = uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0)
                        if not uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0):
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                            mem[_1209 + 1519] = 'delegatesEnhancedMappingSlot'
                            mem[_1209 + 1487] = 28
                            mem[_1209 + 1579] = sha3('delegatesEnhancedMappingSlot')
                            mem[_1209 + 1547] = 32
                            mem[_1209 + 1643] = sha3(sha3('delegatesEnhancedMappingSlot'))
                            mem[_1209 + 1611] = 32
                            mem[_1209 + 1707] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)
                            mem[_1209 + 1739] = sha3(sha3(sha3('delegatesEnhancedMappingSlot')))
                            mem[_1209 + 1675] = 64
                            if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
                                uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
                                uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                            mem[_1209 + 1803] = 'delegatesIndexMappingSlot'
                            mem[_1209 + 1771] = 25
                            mem[_1209 + 1860] = sha3('delegatesIndexMappingSlot')
                            mem[_1209 + 1828] = 32
                            mem[_1209 + 1924] = sha3(sha3('delegatesIndexMappingSlot'))
                            mem[_1209 + 1892] = 32
                            mem[_1209 + 1988] = address(_1208)
                            mem[_1209 + 2020] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
                            mem[_1209 + 1956] = 64
                            mem[64] = _1209 + 2052
                            if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0) != 0:
                                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0) = 0
                                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                        else:
                            if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)].field_0):
                            else:
                                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)++
                            mem[_1209 + 1519] = 'delegatesEnhancedMappingSlot'
                            mem[_1209 + 1487] = 28
                            mem[_1209 + 1579] = sha3('delegatesEnhancedMappingSlot')
                            mem[_1209 + 1547] = 32
                            mem[_1209 + 1643] = sha3(sha3('delegatesEnhancedMappingSlot'))
                            mem[_1209 + 1611] = 32
                            mem[_1209 + 1707] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)
                            mem[_1209 + 1739] = sha3(sha3(sha3('delegatesEnhancedMappingSlot')))
                            mem[_1209 + 1675] = 64
                            if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
                                uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
                                uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                            mem[_1209 + 1803] = 'delegatesIndexMappingSlot'
                            mem[_1209 + 1771] = 25
                            mem[_1209 + 1860] = sha3('delegatesIndexMappingSlot')
                            mem[_1209 + 1828] = 32
                            mem[_1209 + 1924] = sha3(sha3('delegatesIndexMappingSlot'))
                            mem[_1209 + 1892] = 32
                            mem[_1209 + 1988] = address(_1208)
                            mem[_1209 + 2020] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
                            mem[_1209 + 1956] = 64
                            mem[64] = _1209 + 2052
                            if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0) != 0:
                                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0) = 0
                                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                else:
                    if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0)].field_0):
                    else:
                        uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)++
                    mem[_1209 + 1238] = 'delegatesIndexMappingSlot'
                    mem[_1209 + 1206] = 25
                    mem[_1209 + 1295] = sha3('delegatesIndexMappingSlot')
                    mem[_1209 + 1263] = 32
                    mem[_1209 + 1359] = sha3(sha3('delegatesIndexMappingSlot'))
                    mem[_1209 + 1327] = 32
                    mem[_1209 + 1423] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)
                    mem[_1209 + 1455] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
                    mem[_1209 + 1391] = 64
                    if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0) == uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)].field_0):
                        mem[_1209 + 1519] = 'delegatesEnhancedMappingSlot'
                        mem[_1209 + 1487] = 28
                        mem[_1209 + 1579] = sha3('delegatesEnhancedMappingSlot')
                        mem[_1209 + 1547] = 32
                        mem[_1209 + 1643] = sha3(sha3('delegatesEnhancedMappingSlot'))
                        mem[_1209 + 1611] = 32
                        mem[_1209 + 1707] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)
                        mem[_1209 + 1739] = sha3(sha3(sha3('delegatesEnhancedMappingSlot')))
                        mem[_1209 + 1675] = 64
                        if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
                            uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
                            uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                        mem[_1209 + 1803] = 'delegatesIndexMappingSlot'
                        mem[_1209 + 1771] = 25
                        mem[_1209 + 1860] = sha3('delegatesIndexMappingSlot')
                        mem[_1209 + 1828] = 32
                        mem[_1209 + 1924] = sha3(sha3('delegatesIndexMappingSlot'))
                        mem[_1209 + 1892] = 32
                        mem[_1209 + 1988] = address(_1208)
                        mem[_1209 + 2020] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
                        mem[_1209 + 1956] = 64
                        mem[64] = _1209 + 2052
                        if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0) != 0:
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0) = 0
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                    else:
                        uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)].field_0) = uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0)
                        if not uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0):
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                            mem[_1209 + 1519] = 'delegatesEnhancedMappingSlot'
                            mem[_1209 + 1487] = 28
                            mem[_1209 + 1579] = sha3('delegatesEnhancedMappingSlot')
                            mem[_1209 + 1547] = 32
                            mem[_1209 + 1643] = sha3(sha3('delegatesEnhancedMappingSlot'))
                            mem[_1209 + 1611] = 32
                            mem[_1209 + 1707] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)
                            mem[_1209 + 1739] = sha3(sha3(sha3('delegatesEnhancedMappingSlot')))
                            mem[_1209 + 1675] = 64
                            if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
                                uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
                                uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                            mem[_1209 + 1803] = 'delegatesIndexMappingSlot'
                            mem[_1209 + 1771] = 25
                            mem[_1209 + 1860] = sha3('delegatesIndexMappingSlot')
                            mem[_1209 + 1828] = 32
                            mem[_1209 + 1924] = sha3(sha3('delegatesIndexMappingSlot'))
                            mem[_1209 + 1892] = 32
                            mem[_1209 + 1988] = address(_1208)
                            mem[_1209 + 2020] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
                            mem[_1209 + 1956] = 64
                            mem[64] = _1209 + 2052
                            if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0) != 0:
                                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0) = 0
                                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                        else:
                            if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)].field_0):
                            else:
                                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)++
                            mem[_1209 + 1519] = 'delegatesEnhancedMappingSlot'
                            mem[_1209 + 1487] = 28
                            mem[_1209 + 1579] = sha3('delegatesEnhancedMappingSlot')
                            mem[_1209 + 1547] = 32
                            mem[_1209 + 1643] = sha3(sha3('delegatesEnhancedMappingSlot'))
                            mem[_1209 + 1611] = 32
                            mem[_1209 + 1707] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)
                            mem[_1209 + 1739] = sha3(sha3(sha3('delegatesEnhancedMappingSlot')))
                            mem[_1209 + 1675] = 64
                            if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
                                uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
                                uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                            mem[_1209 + 1803] = 'delegatesIndexMappingSlot'
                            mem[_1209 + 1771] = 25
                            mem[_1209 + 1860] = sha3('delegatesIndexMappingSlot')
                            mem[_1209 + 1828] = 32
                            mem[_1209 + 1924] = sha3(sha3('delegatesIndexMappingSlot'))
                            mem[_1209 + 1892] = 32
                            mem[_1209 + 1988] = address(_1208)
                            mem[_1209 + 2020] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
                            mem[_1209 + 1956] = 64
                            mem[64] = _1209 + 2052
                            if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0) != 0:
                                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1208)].field_0) = 0
                                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
            mem[_1209 + 2052] = 0
        emit 0x80e61422: 0, address(_1208)
        idx = idx + 1
        continue 
}

function sub_56708684(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = 'adminSlot'
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = 9
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 233] = sha3('adminSlot')
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 201] = 32
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 297] = sha3(sha3('adminSlot'))
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 265] = 32
    if address(stor[sha3(sha3(sha3('adminSlot')))].field_0) != msg.sender:
        revert with 0, 'only system admin'
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 361] = 'adminSlot'
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 329] = 9
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 402] = sha3('adminSlot')
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 370] = 32
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 466] = sha3(sha3('adminSlot'))
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 434] = 32
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 498
    if address(stor[sha3(sha3(sha3('adminSlot')))].field_0) != msg.sender:
        revert with 0, 'only system admin'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < mem[96]
        _1591 = mem[(32 * idx) + 128]
        _1593 = mem[64]
        mem[mem[64] + 32] = 'adminSlot'
        _1598 = mem[64]
        mem[mem[64]] = 9
        mem[64] = mem[64] + 41
        mem[_1593 + 73] = sha3(mem[_1598 + 32 len mem[_1598]])
        mem[_1593 + 41] = 32
        mem[64] = _1593 + 105
        mem[_1593 + 137] = sha3(mem[_1593 + 73])
        mem[_1593 + 105] = 32
        if address(stor[sha3(sha3(mem[_1593 + 73]))].field_0) != msg.sender:
            revert with 0, 'only system admin'
        mem[_1593 + 201] = 'delegatesIndexMappingSlot'
        mem[_1593 + 169] = 25
        mem[_1593 + 258] = sha3('delegatesIndexMappingSlot')
        mem[_1593 + 226] = 32
        mem[_1593 + 322] = sha3(sha3('delegatesIndexMappingSlot'))
        mem[_1593 + 290] = 32
        mem[_1593 + 386] = address(_1591)
        mem[_1593 + 418] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
        mem[_1593 + 354] = 64
        if not uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0):
            revert with 0, 'deleting wrong address from delegate pool is forbidden'
        mem[_1593 + 482] = 'delegatesEnhancedMappingSlot'
        mem[_1593 + 450] = 28
        mem[_1593 + 542] = sha3('delegatesEnhancedMappingSlot')
        mem[_1593 + 510] = 32
        mem[_1593 + 606] = sha3(sha3('delegatesEnhancedMappingSlot'))
        mem[_1593 + 574] = 32
        mem[_1593 + 670] = 'delegatesEnhancedMappingSlot'
        mem[_1593 + 638] = 28
        mem[_1593 + 730] = sha3('delegatesEnhancedMappingSlot')
        mem[_1593 + 698] = 32
        mem[_1593 + 794] = sha3(sha3('delegatesEnhancedMappingSlot'))
        mem[_1593 + 762] = 32
        mem[_1593 + 858] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)
        mem[_1593 + 890] = sha3(sha3(sha3('delegatesEnhancedMappingSlot')))
        mem[_1593 + 826] = 64
        mem[_1593 + 954] = 'delegatesEnhancedMappingSlot'
        mem[_1593 + 922] = 28
        mem[_1593 + 1014] = sha3('delegatesEnhancedMappingSlot')
        mem[_1593 + 982] = 32
        mem[_1593 + 1078] = sha3(sha3('delegatesEnhancedMappingSlot'))
        mem[_1593 + 1046] = 32
        if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0) == uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0):
            mem[_1593 + 1142] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)
            mem[_1593 + 1174] = sha3(sha3(sha3('delegatesEnhancedMappingSlot')))
            mem[_1593 + 1110] = 64
            if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
                uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
                uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
            mem[_1593 + 1238] = 'delegatesIndexMappingSlot'
            mem[_1593 + 1206] = 25
            mem[_1593 + 1295] = sha3('delegatesIndexMappingSlot')
            mem[_1593 + 1263] = 32
            mem[_1593 + 1359] = sha3(sha3('delegatesIndexMappingSlot'))
            mem[_1593 + 1327] = 32
            mem[_1593 + 1423] = address(_1591)
            mem[_1593 + 1455] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
            mem[_1593 + 1391] = 64
            mem[64] = _1593 + 1487
            if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0) != 0:
                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0) = 0
                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
            mem[_1593 + 1487] = 0
        else:
            mem[_1593 + 1142] = uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0)
            mem[_1593 + 1174] = sha3(sha3(sha3('delegatesEnhancedMappingSlot')))
            mem[_1593 + 1110] = 64
            if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) == uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0)].field_0):
                mem[_1593 + 1238] = 'delegatesIndexMappingSlot'
                mem[_1593 + 1206] = 25
                mem[_1593 + 1295] = sha3('delegatesIndexMappingSlot')
                mem[_1593 + 1263] = 32
                mem[_1593 + 1359] = sha3(sha3('delegatesIndexMappingSlot'))
                mem[_1593 + 1327] = 32
                mem[_1593 + 1423] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)
                mem[_1593 + 1455] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
                mem[_1593 + 1391] = 64
                if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0) == uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)].field_0):
                    mem[_1593 + 1519] = 'delegatesEnhancedMappingSlot'
                    mem[_1593 + 1487] = 28
                    mem[_1593 + 1579] = sha3('delegatesEnhancedMappingSlot')
                    mem[_1593 + 1547] = 32
                    mem[_1593 + 1643] = sha3(sha3('delegatesEnhancedMappingSlot'))
                    mem[_1593 + 1611] = 32
                    mem[_1593 + 1707] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)
                    mem[_1593 + 1739] = sha3(sha3(sha3('delegatesEnhancedMappingSlot')))
                    mem[_1593 + 1675] = 64
                    if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
                        uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
                        uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                    mem[_1593 + 1803] = 'delegatesIndexMappingSlot'
                    mem[_1593 + 1771] = 25
                    mem[_1593 + 1860] = sha3('delegatesIndexMappingSlot')
                    mem[_1593 + 1828] = 32
                    mem[_1593 + 1924] = sha3(sha3('delegatesIndexMappingSlot'))
                    mem[_1593 + 1892] = 32
                    mem[_1593 + 1988] = address(_1591)
                    mem[_1593 + 2020] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
                    mem[_1593 + 1956] = 64
                    mem[64] = _1593 + 2052
                    if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0) != 0:
                        uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0) = 0
                        uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                else:
                    uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)].field_0) = uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0)
                    if not uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0):
                        uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                        mem[_1593 + 1519] = 'delegatesEnhancedMappingSlot'
                        mem[_1593 + 1487] = 28
                        mem[_1593 + 1579] = sha3('delegatesEnhancedMappingSlot')
                        mem[_1593 + 1547] = 32
                        mem[_1593 + 1643] = sha3(sha3('delegatesEnhancedMappingSlot'))
                        mem[_1593 + 1611] = 32
                        mem[_1593 + 1707] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)
                        mem[_1593 + 1739] = sha3(sha3(sha3('delegatesEnhancedMappingSlot')))
                        mem[_1593 + 1675] = 64
                        if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
                            uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
                            uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                        mem[_1593 + 1803] = 'delegatesIndexMappingSlot'
                        mem[_1593 + 1771] = 25
                        mem[_1593 + 1860] = sha3('delegatesIndexMappingSlot')
                        mem[_1593 + 1828] = 32
                        mem[_1593 + 1924] = sha3(sha3('delegatesIndexMappingSlot'))
                        mem[_1593 + 1892] = 32
                        mem[_1593 + 1988] = address(_1591)
                        mem[_1593 + 2020] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
                        mem[_1593 + 1956] = 64
                        mem[64] = _1593 + 2052
                        if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0) != 0:
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0) = 0
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                    else:
                        if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)].field_0):
                        else:
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)++
                        mem[_1593 + 1519] = 'delegatesEnhancedMappingSlot'
                        mem[_1593 + 1487] = 28
                        mem[_1593 + 1579] = sha3('delegatesEnhancedMappingSlot')
                        mem[_1593 + 1547] = 32
                        mem[_1593 + 1643] = sha3(sha3('delegatesEnhancedMappingSlot'))
                        mem[_1593 + 1611] = 32
                        mem[_1593 + 1707] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)
                        mem[_1593 + 1739] = sha3(sha3(sha3('delegatesEnhancedMappingSlot')))
                        mem[_1593 + 1675] = 64
                        if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
                            uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
                            uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                        mem[_1593 + 1803] = 'delegatesIndexMappingSlot'
                        mem[_1593 + 1771] = 25
                        mem[_1593 + 1860] = sha3('delegatesIndexMappingSlot')
                        mem[_1593 + 1828] = 32
                        mem[_1593 + 1924] = sha3(sha3('delegatesIndexMappingSlot'))
                        mem[_1593 + 1892] = 32
                        mem[_1593 + 1988] = address(_1591)
                        mem[_1593 + 2020] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
                        mem[_1593 + 1956] = 64
                        mem[64] = _1593 + 2052
                        if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0) != 0:
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0) = 0
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
            else:
                uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0)].field_0) = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)
                if not uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0):
                    uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                    mem[_1593 + 1238] = 'delegatesIndexMappingSlot'
                    mem[_1593 + 1206] = 25
                    mem[_1593 + 1295] = sha3('delegatesIndexMappingSlot')
                    mem[_1593 + 1263] = 32
                    mem[_1593 + 1359] = sha3(sha3('delegatesIndexMappingSlot'))
                    mem[_1593 + 1327] = 32
                    mem[_1593 + 1423] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)
                    mem[_1593 + 1455] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
                    mem[_1593 + 1391] = 64
                    if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0) == uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)].field_0):
                        mem[_1593 + 1519] = 'delegatesEnhancedMappingSlot'
                        mem[_1593 + 1487] = 28
                        mem[_1593 + 1579] = sha3('delegatesEnhancedMappingSlot')
                        mem[_1593 + 1547] = 32
                        mem[_1593 + 1643] = sha3(sha3('delegatesEnhancedMappingSlot'))
                        mem[_1593 + 1611] = 32
                        mem[_1593 + 1707] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)
                        mem[_1593 + 1739] = sha3(sha3(sha3('delegatesEnhancedMappingSlot')))
                        mem[_1593 + 1675] = 64
                        if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
                            uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
                            uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                        mem[_1593 + 1803] = 'delegatesIndexMappingSlot'
                        mem[_1593 + 1771] = 25
                        mem[_1593 + 1860] = sha3('delegatesIndexMappingSlot')
                        mem[_1593 + 1828] = 32
                        mem[_1593 + 1924] = sha3(sha3('delegatesIndexMappingSlot'))
                        mem[_1593 + 1892] = 32
                        mem[_1593 + 1988] = address(_1591)
                        mem[_1593 + 2020] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
                        mem[_1593 + 1956] = 64
                        mem[64] = _1593 + 2052
                        if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0) != 0:
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0) = 0
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                    else:
                        uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)].field_0) = uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0)
                        if not uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0):
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                            mem[_1593 + 1519] = 'delegatesEnhancedMappingSlot'
                            mem[_1593 + 1487] = 28
                            mem[_1593 + 1579] = sha3('delegatesEnhancedMappingSlot')
                            mem[_1593 + 1547] = 32
                            mem[_1593 + 1643] = sha3(sha3('delegatesEnhancedMappingSlot'))
                            mem[_1593 + 1611] = 32
                            mem[_1593 + 1707] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)
                            mem[_1593 + 1739] = sha3(sha3(sha3('delegatesEnhancedMappingSlot')))
                            mem[_1593 + 1675] = 64
                            if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
                                uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
                                uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                            mem[_1593 + 1803] = 'delegatesIndexMappingSlot'
                            mem[_1593 + 1771] = 25
                            mem[_1593 + 1860] = sha3('delegatesIndexMappingSlot')
                            mem[_1593 + 1828] = 32
                            mem[_1593 + 1924] = sha3(sha3('delegatesIndexMappingSlot'))
                            mem[_1593 + 1892] = 32
                            mem[_1593 + 1988] = address(_1591)
                            mem[_1593 + 2020] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
                            mem[_1593 + 1956] = 64
                            mem[64] = _1593 + 2052
                            if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0) != 0:
                                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0) = 0
                                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                        else:
                            if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)].field_0):
                            else:
                                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)++
                            mem[_1593 + 1519] = 'delegatesEnhancedMappingSlot'
                            mem[_1593 + 1487] = 28
                            mem[_1593 + 1579] = sha3('delegatesEnhancedMappingSlot')
                            mem[_1593 + 1547] = 32
                            mem[_1593 + 1643] = sha3(sha3('delegatesEnhancedMappingSlot'))
                            mem[_1593 + 1611] = 32
                            mem[_1593 + 1707] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)
                            mem[_1593 + 1739] = sha3(sha3(sha3('delegatesEnhancedMappingSlot')))
                            mem[_1593 + 1675] = 64
                            if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
                                uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
                                uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                            mem[_1593 + 1803] = 'delegatesIndexMappingSlot'
                            mem[_1593 + 1771] = 25
                            mem[_1593 + 1860] = sha3('delegatesIndexMappingSlot')
                            mem[_1593 + 1828] = 32
                            mem[_1593 + 1924] = sha3(sha3('delegatesIndexMappingSlot'))
                            mem[_1593 + 1892] = 32
                            mem[_1593 + 1988] = address(_1591)
                            mem[_1593 + 2020] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
                            mem[_1593 + 1956] = 64
                            mem[64] = _1593 + 2052
                            if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0) != 0:
                                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0) = 0
                                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                else:
                    if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0)].field_0):
                    else:
                        uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)++
                    mem[_1593 + 1238] = 'delegatesIndexMappingSlot'
                    mem[_1593 + 1206] = 25
                    mem[_1593 + 1295] = sha3('delegatesIndexMappingSlot')
                    mem[_1593 + 1263] = 32
                    mem[_1593 + 1359] = sha3(sha3('delegatesIndexMappingSlot'))
                    mem[_1593 + 1327] = 32
                    mem[_1593 + 1423] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)
                    mem[_1593 + 1455] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
                    mem[_1593 + 1391] = 64
                    if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0) == uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)].field_0):
                        mem[_1593 + 1519] = 'delegatesEnhancedMappingSlot'
                        mem[_1593 + 1487] = 28
                        mem[_1593 + 1579] = sha3('delegatesEnhancedMappingSlot')
                        mem[_1593 + 1547] = 32
                        mem[_1593 + 1643] = sha3(sha3('delegatesEnhancedMappingSlot'))
                        mem[_1593 + 1611] = 32
                        mem[_1593 + 1707] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)
                        mem[_1593 + 1739] = sha3(sha3(sha3('delegatesEnhancedMappingSlot')))
                        mem[_1593 + 1675] = 64
                        if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
                            uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
                            uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                        mem[_1593 + 1803] = 'delegatesIndexMappingSlot'
                        mem[_1593 + 1771] = 25
                        mem[_1593 + 1860] = sha3('delegatesIndexMappingSlot')
                        mem[_1593 + 1828] = 32
                        mem[_1593 + 1924] = sha3(sha3('delegatesIndexMappingSlot'))
                        mem[_1593 + 1892] = 32
                        mem[_1593 + 1988] = address(_1591)
                        mem[_1593 + 2020] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
                        mem[_1593 + 1956] = 64
                        mem[64] = _1593 + 2052
                        if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0) != 0:
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0) = 0
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                    else:
                        uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)].field_0) = uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0)
                        if not uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0):
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                            mem[_1593 + 1519] = 'delegatesEnhancedMappingSlot'
                            mem[_1593 + 1487] = 28
                            mem[_1593 + 1579] = sha3('delegatesEnhancedMappingSlot')
                            mem[_1593 + 1547] = 32
                            mem[_1593 + 1643] = sha3(sha3('delegatesEnhancedMappingSlot'))
                            mem[_1593 + 1611] = 32
                            mem[_1593 + 1707] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)
                            mem[_1593 + 1739] = sha3(sha3(sha3('delegatesEnhancedMappingSlot')))
                            mem[_1593 + 1675] = 64
                            if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
                                uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
                                uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                            mem[_1593 + 1803] = 'delegatesIndexMappingSlot'
                            mem[_1593 + 1771] = 25
                            mem[_1593 + 1860] = sha3('delegatesIndexMappingSlot')
                            mem[_1593 + 1828] = 32
                            mem[_1593 + 1924] = sha3(sha3('delegatesIndexMappingSlot'))
                            mem[_1593 + 1892] = 32
                            mem[_1593 + 1988] = address(_1591)
                            mem[_1593 + 2020] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
                            mem[_1593 + 1956] = 64
                            mem[64] = _1593 + 2052
                            if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0) != 0:
                                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0) = 0
                                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                        else:
                            if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0)].field_0):
                            else:
                                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)++
                            mem[_1593 + 1519] = 'delegatesEnhancedMappingSlot'
                            mem[_1593 + 1487] = 28
                            mem[_1593 + 1579] = sha3('delegatesEnhancedMappingSlot')
                            mem[_1593 + 1547] = 32
                            mem[_1593 + 1643] = sha3(sha3('delegatesEnhancedMappingSlot'))
                            mem[_1593 + 1611] = 32
                            mem[_1593 + 1707] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)
                            mem[_1593 + 1739] = sha3(sha3(sha3('delegatesEnhancedMappingSlot')))
                            mem[_1593 + 1675] = 64
                            if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) != 0:
                                uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)].field_0) = 0
                                uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                            mem[_1593 + 1803] = 'delegatesIndexMappingSlot'
                            mem[_1593 + 1771] = 25
                            mem[_1593 + 1860] = sha3('delegatesIndexMappingSlot')
                            mem[_1593 + 1828] = 32
                            mem[_1593 + 1924] = sha3(sha3('delegatesIndexMappingSlot'))
                            mem[_1593 + 1892] = 32
                            mem[_1593 + 1988] = address(_1591)
                            mem[_1593 + 2020] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
                            mem[_1593 + 1956] = 64
                            mem[64] = _1593 + 2052
                            if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0) != 0:
                                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_1591)].field_0) = 0
                                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
            mem[_1593 + 2052] = 0
        emit 0x80e61422: 0, address(_1591)
        idx = idx + 1
        continue 
    _1592 = mem[64]
    mem[mem[64] + 32] = 'adminSlot'
    _1594 = mem[64]
    mem[mem[64]] = 9
    mem[64] = mem[64] + 41
    mem[_1592 + 73] = sha3(mem[_1594 + 32 len mem[_1594]])
    mem[_1592 + 41] = 32
    mem[64] = _1592 + 105
    mem[_1592 + 137] = sha3(mem[_1592 + 73])
    mem[_1592 + 105] = 32
    mem[64] = _1592 + 169
    if address(stor[sha3(mem[_1592 + 137])].field_0) != msg.sender:
        revert with 0, 'only system admin'
    _2859 = mem[(32 * ('cd', 4).length) + 128]
    idx = 0
    while idx < _2859:
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _2861 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        _2862 = mem[64]
        mem[mem[64] + 32] = 'adminSlot'
        _2863 = mem[64]
        mem[mem[64]] = 9
        mem[64] = mem[64] + 41
        mem[_2862 + 73] = sha3(mem[_2863 + 32 len mem[_2863]])
        mem[_2862 + 41] = 32
        mem[64] = _2862 + 105
        mem[_2862 + 137] = sha3(mem[_2862 + 73])
        mem[_2862 + 105] = 32
        if address(stor[sha3(sha3(mem[_2862 + 73]))].field_0) != msg.sender:
            revert with 0, 'only system admin'
        if not address(_2861):
            revert with 0, 'sysAddDelegate, you can't set 0x00 to delegate'
        mem[_2862 + 201] = 'delegatesIndexMappingSlot'
        mem[_2862 + 169] = 25
        mem[_2862 + 258] = sha3('delegatesIndexMappingSlot')
        mem[_2862 + 226] = 32
        mem[_2862 + 322] = sha3(sha3('delegatesIndexMappingSlot'))
        mem[_2862 + 290] = 32
        mem[_2862 + 386] = address(_2861)
        mem[_2862 + 418] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
        mem[_2862 + 354] = 64
        if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_2861)].field_0):
            revert with 0, 'adding existing address to delegate pool is forbidden'
        mem[_2862 + 482] = 'delegatesEnhancedMappingSlot'
        mem[_2862 + 450] = 28
        mem[_2862 + 542] = sha3('delegatesEnhancedMappingSlot')
        mem[_2862 + 510] = 32
        mem[_2862 + 606] = sha3(sha3('delegatesEnhancedMappingSlot'))
        mem[_2862 + 574] = 32
        mem[_2862 + 670] = 'delegatesEnhancedMappingSlot'
        mem[_2862 + 638] = 28
        mem[_2862 + 730] = sha3('delegatesEnhancedMappingSlot')
        mem[_2862 + 698] = 32
        mem[_2862 + 794] = sha3(sha3('delegatesEnhancedMappingSlot'))
        mem[_2862 + 762] = 32
        mem[_2862 + 858] = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1
        mem[_2862 + 890] = sha3(sha3(sha3('delegatesEnhancedMappingSlot')))
        mem[_2862 + 826] = 64
        if address(_2861) == uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1].field_0):
            mem[_2862 + 954] = 'delegatesIndexMappingSlot'
            mem[_2862 + 922] = 25
            mem[_2862 + 1011] = sha3('delegatesIndexMappingSlot')
            mem[_2862 + 979] = 32
            mem[_2862 + 1075] = sha3(sha3('delegatesIndexMappingSlot'))
            mem[_2862 + 1043] = 32
            mem[_2862 + 1139] = address(_2861)
            mem[_2862 + 1171] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
            mem[_2862 + 1107] = 64
            mem[64] = _2862 + 1203
            if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1 != uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_2861)].field_0):
                uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_2861)].field_0) = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1
                if not uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1:
                    uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                else:
                    if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_2861)].field_0):
                    else:
                        uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)++
        else:
            address(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1].field_0) = address(_2861)
            Mask(96, 0, stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1].field_160) = 0
            if not address(_2861):
                uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)--
                mem[_2862 + 954] = 'delegatesIndexMappingSlot'
                mem[_2862 + 922] = 25
                mem[_2862 + 1011] = sha3('delegatesIndexMappingSlot')
                mem[_2862 + 979] = 32
                mem[_2862 + 1075] = sha3(sha3('delegatesIndexMappingSlot'))
                mem[_2862 + 1043] = 32
                mem[_2862 + 1139] = address(_2861)
                mem[_2862 + 1171] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
                mem[_2862 + 1107] = 64
                mem[64] = _2862 + 1203
                if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1 != uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_2861)].field_0):
                    uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_2861)].field_0) = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1
                    if not uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1:
                        uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                    else:
                        if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_2861)].field_0):
                        else:
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)++
            else:
                if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))][uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1].field_0):
                else:
                    uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0)++
                mem[_2862 + 954] = 'delegatesIndexMappingSlot'
                mem[_2862 + 922] = 25
                mem[_2862 + 1011] = sha3('delegatesIndexMappingSlot')
                mem[_2862 + 979] = 32
                mem[_2862 + 1075] = sha3(sha3('delegatesIndexMappingSlot'))
                mem[_2862 + 1043] = 32
                mem[_2862 + 1139] = address(_2861)
                mem[_2862 + 1171] = sha3(sha3(sha3('delegatesIndexMappingSlot')))
                mem[_2862 + 1107] = 64
                mem[64] = _2862 + 1203
                if uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1 != uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_2861)].field_0):
                    uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_2861)].field_0) = uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1
                    if not uint256(stor[sha3(sha3(sha3('delegatesEnhancedMappingSlot')))].field_0) + 1:
                        uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)--
                    else:
                        if uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))][address(_2861)].field_0):
                        else:
                            uint256(stor[sha3(sha3(sha3('delegatesIndexMappingSlot')))].field_0)++
        mem[_2862 + 1203] = 1
        emit 0x80e61422: 1, address(_2861)
        _2859 = mem[(32 * ('cd', 4).length) + 128]
        idx = idx + 1
        continue 
}



}
