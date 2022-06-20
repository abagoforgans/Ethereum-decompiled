contract main {




// =====================  Runtime code  =====================


#
#  - sub_ca014e7f(?)
#
const sub_c0a954d6(?) = 0x1c6d00adc347592e646f0e48a431169e705ca19f86f9a3849e50e8557a510051

const sub_c6cc5716(?) = 0x5b2427a6a143d63fc84d73a2ad07e5058a013b12e476c04a97c43b86bbb2392b

const DOMAIN_SEPARATOR_TYPEHASH = 0x35aff83d86937d35b32e04f0ddc6ff469290eef2f1b692d8a815c89404d4749

const NAME = 'Groundhog'

const VERSION = '0.1.0'


address stor0;
address managerAddress;
uint256 domainSeparator;
address oracleRegistryAddress;
mapping of struct subscriptions;

function manager() payable {
    return managerAddress
}

function oracleRegistry() payable {
    return oracleRegistryAddress
}

function subscriptions(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require subscriptions[arg1].field_0 <= 4
    return subscriptions[arg1].field_0, subscriptions[arg1].field_256, subscriptions[arg1].field_512
}

function domainSeparator() payable {
    return domainSeparator
}

function _fallback() payable {
    revert
}

function changeMasterCopy(address arg1) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x424d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d206d616e616765,
                    mem[202 len 26]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x52496e76616c6964206d617374657220636f707920616464726573732070726f76696465,
                    mem[200 len 28]
    stor0 = arg1
}

function sub_7500ef6c(?) payable {
    require calldata.size - 4 >= 224
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 160] = 0x5b2427a6a143d63fc84d73a2ad07e5058a013b12e476c04a97c43b86bbb2392b
    mem[ceil32(arg3.length) + 192] = arg1
    mem[ceil32(arg3.length) + 224] = arg2
    mem[ceil32(arg3.length) + 256] = sha3(arg3[all])
    mem[ceil32(arg3.length) + 288] = arg4
    mem[ceil32(arg3.length) + 320] = arg5
    mem[ceil32(arg3.length) + 352] = arg6
    mem[ceil32(arg3.length) + 384] = arg7
    mem[ceil32(arg3.length) + 128] = 256
    return sha3(0, 0, domainSeparator, sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]))
}

function sub_205ed24c(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + 128] = arg2.length
    return sha3(0, 0, domainSeparator, sha3(0x1c6d00adc347592e646f0e48a431169e705ca19f86f9a3849e50e8557a510051, arg1, sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])))
}

function setup(address arg1) payable {
    require calldata.size - 4 >= 32
    if managerAddress:
        revert with 0, 'Manager has already been set'
    managerAddress = msg.sender
    if domainSeparator:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    62,
                    0x44537562736372697074696f6e4d6f64756c653a3a73657475703a20494e56414c49445f53544154453a20444f4d41494e5f534550415241544f525f5345,
                    mem[226 len 2]
    domainSeparator = sha3(0x35aff83d86937d35b32e04f0ddc6ff469290eef2f1b692d8a815c89404d4749, this.address)
    if oracleRegistryAddress:
        revert with 0, 
                    32,
                    61,
                    0x53537562736372697074696f6e4d6f64756c653a3a73657475703a20494e56414c49445f53544154453a204f5241434c455f52454749535452595f5345,
                    mem[321 len 3]
    oracleRegistryAddress = arg1
}

function sub_8043c199(?) payable {
    require calldata.size - 4 >= 224
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 160] = 0x5b2427a6a143d63fc84d73a2ad07e5058a013b12e476c04a97c43b86bbb2392b
    mem[ceil32(arg3.length) + 192] = arg1
    mem[ceil32(arg3.length) + 224] = arg2
    mem[ceil32(arg3.length) + 256] = sha3(arg3[all])
    mem[ceil32(arg3.length) + 288] = arg4
    mem[ceil32(arg3.length) + 320] = arg5
    mem[ceil32(arg3.length) + 352] = arg6
    mem[ceil32(arg3.length) + 384] = arg7
    mem[ceil32(arg3.length) + 128] = 256
    return Array(len=66, data=0, 0, domainSeparator, sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]), 0 >> 256, Mask(16, -512, 0, 0, domainSeparator, sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]), 0) << 512), 
}

function sub_ba682121(?) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x424d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d206d616e616765,
                    mem[202 len 26]
    require subscriptions[arg1].field_0 <= 4
    if subscriptions[arg1].field_0 == 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x53537562736372697074696f6e4d6f64756c653a3a5f63616e63656c3a20494e56414c49445f53544154453a205355425f5354415455,
                    mem[218 len 10]
    require subscriptions[arg1].field_0 <= 4
    if subscriptions[arg1].field_0 == 4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x53537562736372697074696f6e4d6f64756c653a3a5f63616e63656c3a20494e56414c49445f53544154453a205355425f5354415455,
                    mem[218 len 10]
    require subscriptions[arg1].field_0 <= 4
    emit 0x4d778146: subscriptions[arg1].field_0, 3, arg1
    subscriptions[arg1].field_0 = 3
    require subscriptions[arg1].field_0 <= 4
    if subscriptions[arg1].field_0:
        subscriptions[arg1].field_512 = subscriptions[arg1].field_256
    subscriptions[arg1].field_256 = 0
    return 1
}

function sub_4f309cb8(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[64] = ceil32(arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[0] = arg1
    mem[32] = 4
    require subscriptions[arg1].field_0 <= 4
    if not subscriptions[arg1].field_0:
        require ext_code.size(managerAddress)
        staticcall managerAddress.getThreshold() with:
                gas gas_remaining wei
        mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        s = 0
        s = 0
        while idx < ext_call.return_data[0]:
            _43 = mem[(65 * idx) + 128]
            _44 = mem[(65 * idx) + 160]
            _45 = mem[(65 * idx) + 161]
            _48 = mem[64]
            mem[64] = mem[64] + 32
            mem[_48 + 64] = mem[(65 * idx) + 192 len 1]
            mem[_48 + 96] = _43
            mem[_48 + 128] = _44
            signer = erecover(arg1, _45 << 248, _43, _44) 
            mem[_48] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_48 + 36] = address(signer)
            require ext_code.size(managerAddress)
            staticcall managerAddress.0x2f54bf6e with:
                    gas gas_remaining wei
                   args address(signer)
            mem[_48 + 32] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 
                            32,
                            65,
                            0xfe537562736372697074696f6e4d6f64756c653a3a5f636865636b486173683a20494e56414c49445f444154413a205349474e41545552455f4e4f545f4f574e45,
                            mem[_48 + 165 len 31]
            if address(signer) <= address(s):
                revert with 0, 
                            32,
                            65,
                            0x45537562736372697074696f6e4d6f64756c653a3a5f636865636b486173683a20494e56414c49445f444154413a205349474e41545552455f4f55545f4f524445,
                            mem[_48 + 165 len 31]
            idx = idx + 1
            s = signer
            s = signer
            continue 
        return 1
    require subscriptions[arg1].field_0 <= 4
    if subscriptions[arg1].field_0 == 4:
        if not subscriptions[arg1].field_512:
            revert with 0, 
                        32,
                        54,
                        0x57537562736372697074696f6e4d6f64756c653a3a697356616c69643a20494e56414c49445f53544154453a205355425f5354415455,
                        mem[ceil32(arg2.length) + 250 len 10]
        mem[ceil32(arg2.length) + 128] = block.timestamp <= subscriptions[arg1].field_512
    else:
        require subscriptions[arg1].field_0 <= 4
        if subscriptions[arg1].field_0 == 3:
            if not subscriptions[arg1].field_512:
                revert with 0, 
                            32,
                            54,
                            0x57537562736372697074696f6e4d6f64756c653a3a697356616c69643a20494e56414c49445f53544154453a205355425f5354415455,
                            mem[ceil32(arg2.length) + 250 len 10]
            mem[ceil32(arg2.length) + 128] = block.timestamp <= subscriptions[arg1].field_512
        else:
            require subscriptions[arg1].field_0 <= 4
            if subscriptions[arg1].field_0 != 1:
                require subscriptions[arg1].field_0 <= 4
                if subscriptions[arg1].field_0 != 2:
                    mem[ceil32(arg2.length) + 128] = 0
                else:
                    mem[ceil32(arg2.length) + 128] = 1
            else:
                if subscriptions[arg1].field_256 <= block.timestamp:
                    mem[ceil32(arg2.length) + 128] = 1
                else:
                    require subscriptions[arg1].field_0 <= 4
                    if subscriptions[arg1].field_0 != 2:
                        mem[ceil32(arg2.length) + 128] = 0
                    else:
                        mem[ceil32(arg2.length) + 128] = 1
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function sub_302bacf3(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[64] = ceil32(arg2.length) + 192
    mem[ceil32(arg2.length) + 128] = 6
    mem[ceil32(arg2.length) + 160] = 'cancel'
    mem[ceil32(arg2.length) + 224 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 224] = mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) + 256, mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 224])
    mem[ceil32(arg2.length) + 192] = 6
    mem[ceil32(arg2.length) + 262] = 0x1c6d00adc347592e646f0e48a431169e705ca19f86f9a3849e50e8557a510051
    mem[ceil32(arg2.length) + 294] = arg1
    mem[ceil32(arg2.length) + 326] = sha3(mem[ceil32(arg2.length) + 224 len 6])
    mem[ceil32(arg2.length) + 230] = 96
    mem[ceil32(arg2.length) + 390] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + 391] = 0x100000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + 392] = domainSeparator
    mem[ceil32(arg2.length) + 424] = sha3(0x1c6d00adc347592e646f0e48a431169e705ca19f86f9a3849e50e8557a510051, arg1, sha3(mem[ceil32(arg2.length) + 224 len 6]))
    mem[ceil32(arg2.length) + 358] = 66
    mem[64] = ceil32(arg2.length) + 456
    _62 = sha3(0, 0, domainSeparator, sha3(0x1c6d00adc347592e646f0e48a431169e705ca19f86f9a3849e50e8557a510051, arg1, sha3(mem[ceil32(arg2.length) + 224 len 6])))
    require ext_code.size(managerAddress)
    staticcall managerAddress.getThreshold() with:
            gas gas_remaining wei
    mem[ceil32(arg2.length) + 456] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    s = 0
    while idx < ext_call.return_data[0]:
        _95 = mem[(65 * idx) + 128]
        _96 = mem[(65 * idx) + 160]
        _97 = mem[(65 * idx) + 161]
        _99 = mem[64]
        mem[64] = mem[64] + 32
        mem[_99 + 64] = mem[(65 * idx) + 192 len 1]
        mem[_99 + 96] = _95
        mem[_99 + 128] = _96
        signer = erecover(_62, _97 << 248, _95, _96) 
        mem[_99] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_99 + 36] = address(signer)
        require ext_code.size(managerAddress)
        staticcall managerAddress.0x2f54bf6e with:
                gas gas_remaining wei
               args address(signer)
        mem[_99 + 32] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        65,
                        0xfe537562736372697074696f6e4d6f64756c653a3a5f636865636b486173683a20494e56414c49445f444154413a205349474e41545552455f4e4f545f4f574e45,
                        mem[_99 + 165 len 31]
        if address(signer) <= address(s):
            revert with 0, 
                        32,
                        65,
                        0x45537562736372697074696f6e4d6f64756c653a3a5f636865636b486173683a20494e56414c49445f444154413a205349474e41545552455f4f55545f4f524445,
                        mem[_99 + 165 len 31]
        idx = idx + 1
        s = signer
        s = signer
        continue 
    require subscriptions[arg1].field_0 <= 4
    if subscriptions[arg1].field_0 == 3:
        revert with 0, 
                    32,
                    54,
                    0x53537562736372697074696f6e4d6f64756c653a3a5f63616e63656c3a20494e56414c49445f53544154453a205355425f5354415455,
                    mem[mem[64] + 122 len 10]
    require subscriptions[arg1].field_0 <= 4
    if subscriptions[arg1].field_0 == 4:
        revert with 0, 
                    32,
                    54,
                    0x53537562736372697074696f6e4d6f64756c653a3a5f63616e63656c3a20494e56414c49445f53544154453a205355425f5354415455,
                    mem[mem[64] + 122 len 10]
    require subscriptions[arg1].field_0 <= 4
    emit 0x4d778146: subscriptions[arg1].field_0, 3, arg1
    subscriptions[arg1].field_0 = 3
    require subscriptions[arg1].field_0 <= 4
    if subscriptions[arg1].field_0:
        subscriptions[arg1].field_512 = subscriptions[arg1].field_256
    subscriptions[arg1].field_256 = 0
    return 1
}

function sub_ba87525b(?) payable {
    require calldata.size - 4 >= 256
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + arg8.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 128] = arg8.length
    mem[ceil32(arg3.length) + 160 len arg8.length] = arg8[all]
    mem[ceil32(arg3.length) + arg8.length + 160] = 0
    mem[ceil32(arg3.length) + ceil32(arg8.length) + 192] = 0x5b2427a6a143d63fc84d73a2ad07e5058a013b12e476c04a97c43b86bbb2392b
    mem[ceil32(arg3.length) + ceil32(arg8.length) + 224] = arg1
    mem[ceil32(arg3.length) + ceil32(arg8.length) + 256] = arg2
    mem[ceil32(arg3.length) + ceil32(arg8.length) + 288] = sha3(arg3[all])
    mem[ceil32(arg3.length) + ceil32(arg8.length) + 320] = arg4
    mem[ceil32(arg3.length) + ceil32(arg8.length) + 352] = arg5
    mem[ceil32(arg3.length) + ceil32(arg8.length) + 384] = arg6
    mem[ceil32(arg3.length) + ceil32(arg8.length) + 416] = arg7
    mem[ceil32(arg3.length) + ceil32(arg8.length) + 160] = 256
    _8 = sha3(mem[ceil32(arg3.length) + ceil32(arg8.length) + 192 len Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0), mem[ceil32(arg3.length) + arg8.length + 192 len -arg8.length + ceil32(arg8.length)]])
    mem[ceil32(arg3.length) + ceil32(arg8.length) + 480] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + ceil32(arg8.length) + 481] = 0x100000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + ceil32(arg8.length) + 482] = domainSeparator
    mem[ceil32(arg3.length) + ceil32(arg8.length) + 514] = _8
    mem[ceil32(arg3.length) + ceil32(arg8.length) + 448] = 66
    mem[64] = ceil32(arg3.length) + ceil32(arg8.length) + 546
    require ext_code.size(managerAddress)
    staticcall managerAddress.getThreshold() with:
            gas gas_remaining wei
    mem[ceil32(arg3.length) + ceil32(arg8.length) + 546] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    s = 0
    while idx < ext_call.return_data[0]:
        _64 = mem[ceil32(arg3.length) + (65 * idx) + 160]
        _65 = mem[ceil32(arg3.length) + (65 * idx) + 192]
        _66 = mem[ceil32(arg3.length) + (65 * idx) + 193]
        _68 = mem[64]
        mem[64] = mem[64] + 32
        mem[_68 + 64] = mem[ceil32(arg3.length) + (65 * idx) + 224 len 1]
        mem[_68 + 96] = _64
        mem[_68 + 128] = _65
        signer = erecover(sha3(0, 0, domainSeparator, _8), _66 << 248, _64, _65) 
        mem[_68] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_68 + 36] = address(signer)
        require ext_code.size(managerAddress)
        staticcall managerAddress.0x2f54bf6e with:
                gas gas_remaining wei
               args address(signer)
        mem[_68 + 32] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        65,
                        0xfe537562736372697074696f6e4d6f64756c653a3a5f636865636b486173683a20494e56414c49445f444154413a205349474e41545552455f4e4f545f4f574e45,
                        mem[_68 + 165 len 31]
        if address(signer) <= address(s):
            revert with 0, 
                        32,
                        65,
                        0x45537562736372697074696f6e4d6f64756c653a3a5f636865636b486173683a20494e56414c49445f444154413a205349474e41545552455f4f55545f4f524445,
                        mem[_68 + 165 len 31]
        idx = idx + 1
        s = signer
        s = signer
        continue 
    if arg2:
        if arg1 != msg.sender:
            revert with 0, 
                        32,
                        57,
                        0x53537562736372697074696f6e4d6f64756c653a3a6973526563697069656e743a204d53475f53454e4445525f4e4f545f524543495049454e,
                        mem[mem[64] + 125 len 7]
        _72 = sha3(mem[ceil32(arg3.length) + ceil32(arg8.length) + 480 len mem[ceil32(arg3.length) + ceil32(arg8.length) + 448]])
        mem[0] = sha3(mem[ceil32(arg3.length) + ceil32(arg8.length) + 480 len mem[ceil32(arg3.length) + ceil32(arg8.length) + 448]])
        require subscriptions[mem[ceil32(arg3.length) + ceil32(arg8.length) + 480 len mem[ceil32(arg3.length) + ceil32(arg8.length) + 448]]].field_0 <= 4
        if subscriptions[mem[ceil32(arg3.length) + ceil32(arg8.length) + 480 len mem[ceil32(arg3.length) + ceil32(arg8.length) + 448]]].field_0 == 3:
            revert with 0, 
                        32,
                        54,
                        0x53537562736372697074696f6e4d6f64756c653a3a5f63616e63656c3a20494e56414c49445f53544154453a205355425f5354415455,
                        mem[mem[64] + 122 len 10]
        require subscriptions[mem[ceil32(arg3.length) + ceil32(arg8.length) + 480 len mem[ceil32(arg3.length) + ceil32(arg8.length) + 448]]].field_0 <= 4
        if subscriptions[mem[ceil32(arg3.length) + ceil32(arg8.length) + 480 len mem[ceil32(arg3.length) + ceil32(arg8.length) + 448]]].field_0 == 4:
            revert with 0, 
                        32,
                        54,
                        0x53537562736372697074696f6e4d6f64756c653a3a5f63616e63656c3a20494e56414c49445f53544154453a205355425f5354415455,
                        mem[mem[64] + 122 len 10]
        require subscriptions[mem[ceil32(arg3.length) + ceil32(arg8.length) + 480 len mem[ceil32(arg3.length) + ceil32(arg8.length) + 448]]].field_0 <= 4
        mem[mem[64]] = subscriptions[mem[ceil32(arg3.length) + ceil32(arg8.length) + 480 len mem[ceil32(arg3.length) + ceil32(arg8.length) + 448]]].field_0
        mem[mem[64] + 32] = 3
        emit 0x4d778146: mem[mem[64]], 3, _72
    else:
        if mem[144 len 20] != msg.sender:
            revert with 0, 
                        32,
                        57,
                        0x53537562736372697074696f6e4d6f64756c653a3a6973526563697069656e743a204d53475f53454e4445525f4e4f545f524543495049454e,
                        mem[mem[64] + 125 len 7]
        _79 = sha3(mem[ceil32(arg3.length) + ceil32(arg8.length) + 480 len mem[ceil32(arg3.length) + ceil32(arg8.length) + 448]])
        mem[0] = sha3(mem[ceil32(arg3.length) + ceil32(arg8.length) + 480 len mem[ceil32(arg3.length) + ceil32(arg8.length) + 448]])
        require subscriptions[mem[ceil32(arg3.length) + ceil32(arg8.length) + 480 len mem[ceil32(arg3.length) + ceil32(arg8.length) + 448]]].field_0 <= 4
        if subscriptions[mem[ceil32(arg3.length) + ceil32(arg8.length) + 480 len mem[ceil32(arg3.length) + ceil32(arg8.length) + 448]]].field_0 == 3:
            revert with 0, 
                        32,
                        54,
                        0x53537562736372697074696f6e4d6f64756c653a3a5f63616e63656c3a20494e56414c49445f53544154453a205355425f5354415455,
                        mem[mem[64] + 122 len 10]
        require subscriptions[mem[ceil32(arg3.length) + ceil32(arg8.length) + 480 len mem[ceil32(arg3.length) + ceil32(arg8.length) + 448]]].field_0 <= 4
        if subscriptions[mem[ceil32(arg3.length) + ceil32(arg8.length) + 480 len mem[ceil32(arg3.length) + ceil32(arg8.length) + 448]]].field_0 == 4:
            revert with 0, 
                        32,
                        54,
                        0x53537562736372697074696f6e4d6f64756c653a3a5f63616e63656c3a20494e56414c49445f53544154453a205355425f5354415455,
                        mem[mem[64] + 122 len 10]
        require subscriptions[mem[ceil32(arg3.length) + ceil32(arg8.length) + 480 len mem[ceil32(arg3.length) + ceil32(arg8.length) + 448]]].field_0 <= 4
        mem[mem[64]] = subscriptions[mem[ceil32(arg3.length) + ceil32(arg8.length) + 480 len mem[ceil32(arg3.length) + ceil32(arg8.length) + 448]]].field_0
        mem[mem[64] + 32] = 3
        emit 0x4d778146: mem[mem[64]], 3, _79
    subscriptions[mem[0]].field_0 = 3
    require subscriptions[mem[0]].field_0 <= 4
    if subscriptions[mem[0]].field_0:
        subscriptions[mem[0]].field_512 = subscriptions[mem[0]].field_256
    subscriptions[mem[0]].field_256 = 0
    return 1
}



}
