contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 861]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_2e09314d(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0x21a9002100000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 132] = 32
    mem[(32 * arg1.length) + 164] = arg1.length
    if Mask(251, 0, arg1.length):
        mem[(32 * arg1.length) + 196] = mem[128]
        mem[(32 * arg1.length) + 228 len floor32((32 * arg1.length) - 1)] = mem[160 len floor32((32 * arg1.length) - 1)]
    require ext_code.size(0xa4d861975303e86dfd0c2cbe08bdb48f1171f4e6)
    delegate 0xa4d861975303e86dfd0c2cbe08bdb48f1171f4e6.0x21a90021 with:
         gas gas_remaining - 710 wei
        args Array(len=arg1.length, data=mem[(32 * arg1.length) + 196 len 32 * arg1.length])
    require delegate.return_code
    mem[(32 * arg1.length) + 128] = 0xbf9b126d00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 132] = 32
    mem[(32 * arg1.length) + 164] = arg1.length
    if Mask(251, 0, arg1.length):
        mem[(32 * arg1.length) + 196] = mem[128]
        mem[(32 * arg1.length) + 228 len floor32((32 * arg1.length) - 1)] = mem[160 len floor32((32 * arg1.length) - 1)]
    require ext_code.size(0xa4d861975303e86dfd0c2cbe08bdb48f1171f4e6)
    delegate 0xa4d861975303e86dfd0c2cbe08bdb48f1171f4e6.0xbf9b126d with:
         gas gas_remaining - 710 wei
        args Array(len=arg1.length, data=mem[(32 * arg1.length) + 196 len 32 * arg1.length])
    require delegate.return_code
    require arg1.length
    require 1000 * delegate.return_data[0] / arg1.length
    return (10^9 * ((1000 * arg2) - delegate.return_data[0])^2 / 1000 * delegate.return_data[0] / arg1.length)
}

function sub_43d24146(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if 1 == arg3:
        mem[(32 * arg1.length) + 128] = 0x21a9002100000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = 32
        mem[(32 * arg1.length) + 164] = arg1.length
        if Mask(251, 0, arg1.length):
            mem[(32 * arg1.length) + 196] = mem[128]
            mem[(32 * arg1.length) + 228 len floor32((32 * arg1.length) - 1)] = mem[160 len floor32((32 * arg1.length) - 1)]
        if ext_code.size(0xa4d861975303e86dfd0c2cbe08bdb48f1171f4e6):
            delegate 0xa4d861975303e86dfd0c2cbe08bdb48f1171f4e6.0x21a90021 with:
                 gas gas_remaining - 710 wei
                args Array(len=arg1.length, data=mem[(32 * arg1.length) + 196 len 32 * arg1.length])
            if delegate.return_code:
                mem[(32 * arg1.length) + 128] = 0xbf9b126d00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + 132] = 32
                mem[(32 * arg1.length) + 164] = arg1.length
                if Mask(251, 0, arg1.length):
                    mem[(32 * arg1.length) + 196] = mem[128]
                    mem[(32 * arg1.length) + 228 len floor32((32 * arg1.length) - 1)] = mem[160 len floor32((32 * arg1.length) - 1)]
                if ext_code.size(0xa4d861975303e86dfd0c2cbe08bdb48f1171f4e6):
                    delegate 0xa4d861975303e86dfd0c2cbe08bdb48f1171f4e6.0xbf9b126d with:
                         gas gas_remaining - 710 wei
                        args Array(len=arg1.length, data=mem[(32 * arg1.length) + 196 len 32 * arg1.length])
                    if delegate.return_code:
                        if arg1.length:
                            if 1000 * delegate.return_data[0] / arg1.length:
                                return 10^9 * ((1000 * arg2) - delegate.return_data[0])^2 / 1000 * delegate.return_data[0] / arg1.length >= 6635
    else:
        if arg3 != 5:
            if arg3 != 10:
                return 0
        mem[(32 * arg1.length) + 128] = 0x21a9002100000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = 32
        mem[(32 * arg1.length) + 164] = arg1.length
        if Mask(251, 0, arg1.length):
            mem[(32 * arg1.length) + 196] = mem[128]
            mem[(32 * arg1.length) + 228 len floor32((32 * arg1.length) - 1)] = mem[160 len floor32((32 * arg1.length) - 1)]
        if 1 == arg3:
            if ext_code.size(0xa4d861975303e86dfd0c2cbe08bdb48f1171f4e6):
                delegate 0xa4d861975303e86dfd0c2cbe08bdb48f1171f4e6.0x21a90021 with:
                     gas gas_remaining - 710 wei
                    args Array(len=arg1.length, data=mem[(32 * arg1.length) + 196 len 32 * arg1.length])
                if delegate.return_code:
                    mem[(32 * arg1.length) + 128] = 0xbf9b126d00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg1.length) + 132] = 32
                    mem[(32 * arg1.length) + 164] = arg1.length
                    if Mask(251, 0, arg1.length):
                        mem[(32 * arg1.length) + 196] = mem[128]
                        mem[(32 * arg1.length) + 228 len floor32((32 * arg1.length) - 1)] = mem[160 len floor32((32 * arg1.length) - 1)]
                    if ext_code.size(0xa4d861975303e86dfd0c2cbe08bdb48f1171f4e6):
                        delegate 0xa4d861975303e86dfd0c2cbe08bdb48f1171f4e6.0xbf9b126d with:
                             gas gas_remaining - 710 wei
                            args Array(len=arg1.length, data=mem[(32 * arg1.length) + 196 len 32 * arg1.length])
                        if delegate.return_code:
                            if arg1.length:
                                if 1000 * delegate.return_data[0] / arg1.length:
                                    return 10^9 * ((1000 * arg2) - delegate.return_data[0])^2 / 1000 * delegate.return_data[0] / arg1.length >= 6635
        else:
            if 5 == arg3:
                if ext_code.size(0xa4d861975303e86dfd0c2cbe08bdb48f1171f4e6):
                    delegate 0xa4d861975303e86dfd0c2cbe08bdb48f1171f4e6.0x21a90021 with:
                         gas gas_remaining - 710 wei
                        args Array(len=arg1.length, data=mem[(32 * arg1.length) + 196 len 32 * arg1.length])
                    if delegate.return_code:
                        mem[(32 * arg1.length) + 128] = 0xbf9b126d00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg1.length) + 132] = 32
                        mem[(32 * arg1.length) + 164] = arg1.length
                        if Mask(251, 0, arg1.length):
                            mem[(32 * arg1.length) + 196] = mem[128]
                            mem[(32 * arg1.length) + 228 len floor32((32 * arg1.length) - 1)] = mem[160 len floor32((32 * arg1.length) - 1)]
                        if ext_code.size(0xa4d861975303e86dfd0c2cbe08bdb48f1171f4e6):
                            delegate 0xa4d861975303e86dfd0c2cbe08bdb48f1171f4e6.0xbf9b126d with:
                                 gas gas_remaining - 710 wei
                                args Array(len=arg1.length, data=mem[(32 * arg1.length) + 196 len 32 * arg1.length])
                            if delegate.return_code:
                                if arg1.length:
                                    if 1000 * delegate.return_data[0] / arg1.length:
                                        return 10^9 * ((1000 * arg2) - delegate.return_data[0])^2 / 1000 * delegate.return_data[0] / arg1.length >= 3841
            else:
                if arg3 != 10:
                    if ext_code.size(0xa4d861975303e86dfd0c2cbe08bdb48f1171f4e6):
                        delegate 0xa4d861975303e86dfd0c2cbe08bdb48f1171f4e6.0x21a90021 with:
                             gas gas_remaining - 710 wei
                            args Array(len=arg1.length, data=mem[(32 * arg1.length) + 196 len 32 * arg1.length])
                        if delegate.return_code:
                            mem[(32 * arg1.length) + 128] = 0xbf9b126d00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg1.length) + 132] = 32
                            mem[(32 * arg1.length) + 164] = arg1.length
                            if Mask(251, 0, arg1.length):
                                mem[(32 * arg1.length) + 196] = mem[128]
                                mem[(32 * arg1.length) + 228 len floor32((32 * arg1.length) - 1)] = mem[160 len floor32((32 * arg1.length) - 1)]
                            if ext_code.size(0xa4d861975303e86dfd0c2cbe08bdb48f1171f4e6):
                                delegate 0xa4d861975303e86dfd0c2cbe08bdb48f1171f4e6.0xbf9b126d with:
                                     gas gas_remaining - 710 wei
                                    args Array(len=arg1.length, data=mem[(32 * arg1.length) + 196 len 32 * arg1.length])
                                if delegate.return_code:
                                    if arg1.length:
                                        if 1000 * delegate.return_data[0] / arg1.length:
                                            return 10^9 * ((1000 * arg2) - delegate.return_data[0])^2 / 1000 * delegate.return_data[0] / arg1.length >= 0
                else:
                    if ext_code.size(0xa4d861975303e86dfd0c2cbe08bdb48f1171f4e6):
                        delegate 0xa4d861975303e86dfd0c2cbe08bdb48f1171f4e6.0x21a90021 with:
                             gas gas_remaining - 710 wei
                            args Array(len=arg1.length, data=mem[(32 * arg1.length) + 196 len 32 * arg1.length])
                        if delegate.return_code:
                            mem[(32 * arg1.length) + 128] = 0xbf9b126d00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg1.length) + 132] = 32
                            mem[(32 * arg1.length) + 164] = arg1.length
                            if Mask(251, 0, arg1.length):
                                mem[(32 * arg1.length) + 196] = mem[128]
                                mem[(32 * arg1.length) + 228 len floor32((32 * arg1.length) - 1)] = mem[160 len floor32((32 * arg1.length) - 1)]
                            if ext_code.size(0xa4d861975303e86dfd0c2cbe08bdb48f1171f4e6):
                                delegate 0xa4d861975303e86dfd0c2cbe08bdb48f1171f4e6.0xbf9b126d with:
                                     gas gas_remaining - 710 wei
                                    args Array(len=arg1.length, data=mem[(32 * arg1.length) + 196 len 32 * arg1.length])
                                if delegate.return_code:
                                    if arg1.length:
                                        if 1000 * delegate.return_data[0] / arg1.length:
                                            return 10^9 * ((1000 * arg2) - delegate.return_data[0])^2 / 1000 * delegate.return_data[0] / arg1.length >= 2706
    revert
}



}
