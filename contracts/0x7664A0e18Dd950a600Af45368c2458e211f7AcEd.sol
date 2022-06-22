contract main {




// =====================  Runtime code  =====================


const sub_54ff60c5(?) = 32

const sub_72ab7040(?) = 1024


mapping of struct stor0;

function _fallback() payable {
    revert
}

function sub_76748bfe(?) payable {
    require calldata.size - 4 >= 32
    return stor0[arg1].field_0, stor0[arg1].field_256, stor0[arg1].field_512, stor0[arg1].field_768, stor0[arg1].field_1024
}

function sub_83217a76(?) payable {
    require calldata.size - 4 >= 160
    require arg2 > 0
    require 0 < arg3
    require arg3 <= 1024
    require arg5 > block.timestamp
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor0[address(arg4)].field_0 = arg1
    stor0[address(arg4)].field_256 = arg2
    stor0[address(arg4)].field_512 = arg3
    stor0[address(arg4)].field_768 = arg5
    stor0[address(arg4)].field_1024 = msg.sender or Mask(96, 160, stor0[address(arg4)].field_1024)
}

function sub_9dc217ac(?) payable {
    require calldata.size - 4 >= 32
    require block.timestamp > stor0[address(arg1)].field_768
    idx = 0
    s = 0
    while idx < 1024:
        require idx / 32 < 32
        if not stor0[address(arg1)][0.03125 / idx].field_1280 or not 1:
            idx = idx + 1
            s = s
            continue 
        require stor0[address(arg1)].field_512
        idx = idx + 1
        s = s + (stor0[address(arg1)].field_256 / stor0[address(arg1)].field_512)
        continue 
    require s <= stor0[address(arg1)].field_256
    require ext_code.size(stor0[address(arg1)].field_0)
    call stor0[address(arg1)].field_0.0xa9059cbb with:
         gas gas_remaining wei
        args stor0[address(arg1)].field_1024, stor0[address(arg1)].field_256 - s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor0[address(arg1)].field_0 = 0
    stor0[address(arg1)].field_256 = 0
    stor0[address(arg1)].field_512 = 0
    stor0[address(arg1)].field_768 = 0
    stor0[address(arg1)].field_1024 = 0
    idx = 5
    while 37 > idx:
        stor0[address(arg1)][idx].field_0 = 0
        idx = idx + 1
        continue 
}

function sub_c29fa9dd(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128] = address(arg1)
    mem[96] = 20
    mem[180] = '\x19Ethereum Signed Message:\n32'
    mem[208] = sha3(arg1)
    mem[148] = 60
    mem[240] = arg2.length
    mem[272 len arg2.length] = arg2[all]
    mem[arg2.length + 272] = 0
    if arg2.length != 65:
        mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 304
        mem[ceil32(arg2.length) + 272] = arg3.length
        mem[ceil32(arg2.length) + 304 len arg3.length] = arg3[all]
        mem[ceil32(arg2.length) + arg3.length + 304] = 0
        idx = 0
        s = 0
        t = 0
        while idx < arg3.length:
            _121 = mem[ceil32(arg2.length) + 304]
            if address(s) >= mem[ceil32(arg2.length) + 304 len 20]:
                mem[mem[64] + 32] = Mask(160, 96, mem[ceil32(arg2.length) + 304])
                mem[mem[64] + 52] = address(s)
                _160 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                idx = idx + 1
                s = sha3(mem[_160 + 32 len mem[_160]])
                t = t
                continue 
            mem[mem[64] + 32] = address(s)
            mem[mem[64] + 52] = Mask(160, 96, _121)
            _164 = mem[64]
            mem[mem[64]] = 40
            mem[64] = mem[64] + 72
            idx = idx + 1
            s = sha3(mem[_164 + 32 len mem[_164]])
            t = 1 << idx or t
            continue 
    else:
        _13 = mem[336]
        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 336, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 336, 32))), 0) - 256 >= 27:
            mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 304
            mem[ceil32(arg2.length) + 272] = arg3.length
            mem[ceil32(arg2.length) + 304 len arg3.length] = arg3[all]
            mem[ceil32(arg2.length) + arg3.length + 304] = 0
            idx = 0
            s = 0
            t = 0
            while idx < arg3.length:
                _117 = mem[ceil32(arg2.length) + 304]
                if address(s) >= mem[ceil32(arg2.length) + 304 len 20]:
                    mem[mem[64] + 32] = Mask(160, 96, mem[ceil32(arg2.length) + 304])
                    mem[mem[64] + 52] = address(s)
                    _124 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    idx = idx + 1
                    s = sha3(mem[_124 + 32 len mem[_124]])
                    t = t
                    continue 
                mem[mem[64] + 32] = address(s)
                mem[mem[64] + 52] = Mask(160, 96, _117)
                _128 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                idx = idx + 1
                s = sha3(mem[_128 + 32 len mem[_128]])
                t = 1 << idx or t
                continue 
        else:
            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 336, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 336, 32))), 0) - 256) + 27):
                mem[ceil32(arg2.length) + 336] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 336, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 336, 32))), 0) - 256) + 27)
                mem[ceil32(arg2.length) + 368] = mem[272]
                mem[ceil32(arg2.length) + 400] = mem[304]
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg1)), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_13')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_13')), 0) - 256) + 27 << 248, mem[272], mem[304]) 
                mem[ceil32(arg2.length) + 272] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 336
                mem[ceil32(arg2.length) + 304] = arg3.length
                mem[ceil32(arg2.length) + 336 len arg3.length] = arg3[all]
                mem[ceil32(arg2.length) + arg3.length + 336] = 0
                idx = 0
                s = signer
                t = 0
                while idx < arg3.length:
                    _118 = mem[ceil32(arg2.length) + 336]
                    if address(s) >= mem[ceil32(arg2.length) + 336 len 20]:
                        mem[mem[64] + 32] = Mask(160, 96, mem[ceil32(arg2.length) + 336])
                        mem[mem[64] + 52] = address(s)
                        _133 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        idx = idx + 1
                        s = sha3(mem[_133 + 32 len mem[_133]])
                        t = t
                        continue 
                    mem[mem[64] + 32] = address(s)
                    mem[mem[64] + 52] = Mask(160, 96, _118)
                    _137 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    idx = idx + 1
                    s = sha3(mem[_137 + 32 len mem[_137]])
                    t = 1 << idx or t
                    continue 
            else:
                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 336, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 336, 32))), 0) - 256) + 27) != 28:
                    mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 304
                    mem[ceil32(arg2.length) + 272] = arg3.length
                    mem[ceil32(arg2.length) + 304 len arg3.length] = arg3[all]
                    mem[ceil32(arg2.length) + arg3.length + 304] = 0
                    idx = 0
                    s = 0
                    t = 0
                    while idx < arg3.length:
                        _120 = mem[ceil32(arg2.length) + 304]
                        if address(s) >= mem[ceil32(arg2.length) + 304 len 20]:
                            mem[mem[64] + 32] = Mask(160, 96, mem[ceil32(arg2.length) + 304])
                            mem[mem[64] + 52] = address(s)
                            _151 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            idx = idx + 1
                            s = sha3(mem[_151 + 32 len mem[_151]])
                            t = t
                            continue 
                        mem[mem[64] + 32] = address(s)
                        mem[mem[64] + 52] = Mask(160, 96, _120)
                        _155 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        idx = idx + 1
                        s = sha3(mem[_155 + 32 len mem[_155]])
                        t = 1 << idx or t
                        continue 
                else:
                    mem[ceil32(arg2.length) + 336] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 336, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 336, 32))), 0) - 256) + 27)
                    mem[ceil32(arg2.length) + 368] = mem[272]
                    mem[ceil32(arg2.length) + 400] = mem[304]
                    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg1)), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_13')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_13')), 0) - 256) + 27 << 248, mem[272], mem[304]) 
                    mem[ceil32(arg2.length) + 272] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 336
                    mem[ceil32(arg2.length) + 304] = arg3.length
                    mem[ceil32(arg2.length) + 336 len arg3.length] = arg3[all]
                    mem[ceil32(arg2.length) + arg3.length + 336] = 0
                    idx = 0
                    s = signer
                    t = 0
                    while idx < arg3.length:
                        _119 = mem[ceil32(arg2.length) + 336]
                        if address(s) >= mem[ceil32(arg2.length) + 336 len 20]:
                            mem[mem[64] + 32] = Mask(160, 96, mem[ceil32(arg2.length) + 336])
                            mem[mem[64] + 52] = address(s)
                            _142 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            idx = idx + 1
                            s = sha3(mem[_142 + 32 len mem[_142]])
                            t = t
                            continue 
                        mem[mem[64] + 32] = address(s)
                        mem[mem[64] + 52] = Mask(160, 96, _119)
                        _146 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        idx = idx + 1
                        s = sha3(mem[_146 + 32 len mem[_146]])
                        t = 1 << idx or t
                        continue 
    require t / 32 < 32
    require not stor0[address(s)][0.03125 / t].field_1280
    require t / 32 < 32
    stor0[address(s)][0.03125 / t].field_1280 = 1
    require stor0[address(s)].field_512
    require ext_code.size(stor0[address(s)].field_0)
    call stor0[address(s)].field_0.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), stor0[address(s)].field_256 / stor0[address(s)].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0x641d546b: address(s), t, arg1
}



}
