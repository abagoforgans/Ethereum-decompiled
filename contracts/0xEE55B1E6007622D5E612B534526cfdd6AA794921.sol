contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 5712]




// =====================  Runtime code  =====================


const isTransferToICAPAllowed(address arg1, bytes32 arg2, uint256 arg3) = 0


address stor0;
array of struct providers;
mapping of uint8 stor2;

function providers(uint256 arg1) {
    require arg1 < providers.length
    return providers[arg1].field_0
}

function whitelist(address arg1) {
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function addToWhitelist(address arg1) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args address(this.address), 'admin', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    stor2[address(arg1)] = 1
    emit AddedToWhitelist(arg1);
    return 1
}

function removeFromWhitelist(address arg1) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args address(this.address), 'admin', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    stor2[address(arg1)] = 0
    emit RemovedFromWhitelist(arg1);
    return 1
}

function setupAmbi2(address arg1) {
    if stor0:
        return 0
    require ext_code.size(arg1)
    call arg1.claimFor(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args address(this.address), msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.isOwner(address rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args address(this.address), msg.sender
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    stor0 = arg1
    return 1
}

function getProviders() {
    if not providers.length:
        mem[(32 * providers.length) + 160] = 32
        mem[(32 * providers.length) + 192] = providers.length
        mem[(32 * providers.length) + 224 len floor32(providers.length)] = mem[160 len floor32(providers.length)]
        return memory
          from (32 * providers.length) + 160
           len (96 * providers.length) + 64
    mem[160] = address(providers.field_0)
    idx = 160
    s = 0
    while (32 * providers.length) + 128 > idx:
        mem[idx + 32] = providers[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * providers.length) + 224 len floor32(providers.length)] = mem[160 len floor32(providers.length)]
    return Array(len=providers.length, data=mem[160 len floor32(providers.length)], mem[(32 * providers.length) + floor32(providers.length) + 224 len (32 * providers.length) - floor32(providers.length)]), 
}

function setProviders(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args address(this.address), 'admin', msg.sender
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    providers.length = arg1.length
    if not arg1.length:
        idx = 0
        while providers.length > idx:
            providers[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            providers[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while providers.length > idx:
            providers[idx].field_0 = 0
            idx = idx + 1
            continue 
    return 1
}

function sub_ea3719c2(?) {
    s = 0
    idx = 0
    while idx < providers.length:
        mem[0] = 1
        mem[100] = arg1
        mem[132] = 'kyc'
        require ext_code.size(providers[idx].field_0)
        call providers[idx].field_0.getProperty(address rg1, bytes32 rg2) with:
             gas gas_remaining - 710 wei
            args address(arg1), 'kyc'
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] < 5:
            s = ext_call.return_data[0]
            idx = idx + 1
            continue 
        if ext_call.return_data[0]:
            s = 0
            idx = 0
            while idx < providers.length:
                mem[0] = 1
                mem[100] = arg1
                mem[132] = 'country'
                require ext_code.size(providers[idx].field_0)
                call providers[idx].field_0.getProperty(address rg1, bytes32 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 'country'
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                if not ext_call.return_data[0]:
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0]:
                    if ext_call.return_data[0] != 'KP':
                        if ext_call.return_data[0] != 'CN':
                            if ext_call.return_data[0] != 'IR':
                                if ext_call.return_data[0] != 'SD':
                                    if ext_call.return_data[0] != 'CU':
                                        if ext_call.return_data[0] != 'SY':
                                            if ext_call.return_data[0] != 'KR':
                                                if ext_call.return_data[0] != 'MO':
                                                    if ext_call.return_data[0] != 'AU':
                                                        if ext_call.return_data[0] != 'NZ':
                                                            if ext_call.return_data[0] != 'GI':
                                                                if ext_call.return_data[0] != 'CH':
                                                                    if ext_call.return_data[0] != 'IL':
                                                                        if ext_call.return_data[0] != 'CA':
                                                                            if ext_call.return_data[0] != 'JP':
                                                                                if ext_call.return_data[0] != 'SG':
                                                                                    if ext_call.return_data[0] != 'HK':
                                                                                        if ext_call.return_data[0] != 'US':
                                                                                            if ext_call.return_data[0] != 'AT':
                                                                                                if ext_call.return_data[0] != 'BE':
                                                                                                    if ext_call.return_data[0] != 'BG':
                                                                                                        if ext_call.return_data[0] != 'HR':
                                                                                                            if ext_call.return_data[0] != 'CY':
                                                                                                                if ext_call.return_data[0] != 'CZ':
                                                                                                                    if ext_call.return_data[0] != 'DK':
                                                                                                                        if ext_call.return_data[0] != 'EE':
                                                                                                                            if ext_call.return_data[0] != 'FI':
                                                                                                                                if ext_call.return_data[0] != 'FR':
                                                                                                                                    if ext_call.return_data[0] != 'DE':
                                                                                                                                        if ext_call.return_data[0] != 'GR':
                                                                                                                                            if ext_call.return_data[0] != 'HU':
                                                                                                                                                if ext_call.return_data[0] != 'IE':
                                                                                                                                                    if ext_call.return_data[0] != 'IT':
                                                                                                                                                        if ext_call.return_data[0] != 'LV':
                                                                                                                                                            if ext_call.return_data[0] != 'LT':
                                                                                                                                                                if ext_call.return_data[0] != 'LU':
                                                                                                                                                                    if ext_call.return_data[0] != 'MT':
                                                                                                                                                                        if ext_call.return_data[0] != 'NL':
                                                                                                                                                                            if ext_call.return_data[0] != 'PL':
                                                                                                                                                                                if ext_call.return_data[0] != 'PT':
                                                                                                                                                                                    if ext_call.return_data[0] != 'RO':
                                                                                                                                                                                        if ext_call.return_data[0] != 'SK':
                                                                                                                                                                                            if ext_call.return_data[0] != 'SI':
                                                                                                                                                                                                if ext_call.return_data[0] != 'ES':
                                                                                                                                                                                                    if ext_call.return_data[0] != 'SE':
                                                                                                                                                                                                        if ext_call.return_data[0] != 'GB':
                                                                                                                                                                                                            return 1
                                                    s = 0
                                                    idx = 0
                                                    while idx < providers.length:
                                                        mem[0] = 1
                                                        mem[100] = arg1
                                                        mem[132] = 'accredited'
                                                        require ext_code.size(providers[idx].field_0)
                                                        call providers[idx].field_0.getProperty(address rg1, bytes32 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), 'accredited'
                                                        mem[96] = ext_call.return_data[0]
                                                        require ext_call.success
                                                        if not ext_call.return_data[0]:
                                                            s = ext_call.return_data[0]
                                                            idx = idx + 1
                                                            continue 
                                                        return 1
                                                    return 0
                                                else:
                                                    return 0
                                            else:
                                                return 0
                                        else:
                                            return 0
                                    else:
                                        return 0
                                else:
                                    return 0
                            else:
                                return 0
                        else:
                            return 0
                    else:
                        return 0
                else:
                    return 0
            return 0
        else:
            return 0
    return 0
}

function isTransferAllowed(address arg1, address arg2, uint256 arg3) {
    if stor2[address(arg1)]:
        if stor2[address(arg2)]:
            return 1
        s = 0
        idx = 0
        while idx < providers.length:
            mem[0] = 1
            mem[100] = arg2
            mem[132] = 'kyc'
            require ext_code.size(providers[idx].field_0)
            call providers[idx].field_0.getProperty(address rg1, bytes32 rg2) with:
                 gas gas_remaining - 710 wei
                args address(arg2), 'kyc'
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0] < 5:
                s = ext_call.return_data[0]
                idx = idx + 1
                continue 
            if ext_call.return_data[0]:
                s = 0
                idx = 0
                while idx < providers.length:
                    mem[0] = 1
                    mem[100] = arg2
                    mem[132] = 'country'
                    require ext_code.size(providers[idx].field_0)
                    call providers[idx].field_0.getProperty(address rg1, bytes32 rg2) with:
                         gas gas_remaining - 710 wei
                        args address(arg2), 'country'
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                    if ext_call.return_data[0]:
                        if ext_call.return_data[0] != 'KP':
                            if ext_call.return_data[0] != 'CN':
                                if ext_call.return_data[0] != 'IR':
                                    if ext_call.return_data[0] != 'SD':
                                        if ext_call.return_data[0] != 'CU':
                                            if ext_call.return_data[0] != 'SY':
                                                if ext_call.return_data[0] != 'KR':
                                                    if ext_call.return_data[0] != 'MO':
                                                        if ext_call.return_data[0] != 'AU':
                                                            if ext_call.return_data[0] != 'NZ':
                                                                if ext_call.return_data[0] != 'GI':
                                                                    if ext_call.return_data[0] != 'CH':
                                                                        if ext_call.return_data[0] != 'IL':
                                                                            if ext_call.return_data[0] != 'CA':
                                                                                if ext_call.return_data[0] != 'JP':
                                                                                    if ext_call.return_data[0] != 'SG':
                                                                                        if ext_call.return_data[0] != 'HK':
                                                                                            if ext_call.return_data[0] != 'US':
                                                                                                if ext_call.return_data[0] != 'AT':
                                                                                                    if ext_call.return_data[0] != 'BE':
                                                                                                        if ext_call.return_data[0] != 'BG':
                                                                                                            if ext_call.return_data[0] != 'HR':
                                                                                                                if ext_call.return_data[0] != 'CY':
                                                                                                                    if ext_call.return_data[0] != 'CZ':
                                                                                                                        if ext_call.return_data[0] != 'DK':
                                                                                                                            if ext_call.return_data[0] != 'EE':
                                                                                                                                if ext_call.return_data[0] != 'FI':
                                                                                                                                    if ext_call.return_data[0] != 'FR':
                                                                                                                                        if ext_call.return_data[0] != 'DE':
                                                                                                                                            if ext_call.return_data[0] != 'GR':
                                                                                                                                                if ext_call.return_data[0] != 'HU':
                                                                                                                                                    if ext_call.return_data[0] != 'IE':
                                                                                                                                                        if ext_call.return_data[0] != 'IT':
                                                                                                                                                            if ext_call.return_data[0] != 'LV':
                                                                                                                                                                if ext_call.return_data[0] != 'LT':
                                                                                                                                                                    if ext_call.return_data[0] != 'LU':
                                                                                                                                                                        if ext_call.return_data[0] != 'MT':
                                                                                                                                                                            if ext_call.return_data[0] != 'NL':
                                                                                                                                                                                if ext_call.return_data[0] != 'PL':
                                                                                                                                                                                    if ext_call.return_data[0] != 'PT':
                                                                                                                                                                                        if ext_call.return_data[0] != 'RO':
                                                                                                                                                                                            if ext_call.return_data[0] != 'SK':
                                                                                                                                                                                                if ext_call.return_data[0] != 'SI':
                                                                                                                                                                                                    if ext_call.return_data[0] != 'ES':
                                                                                                                                                                                                        if ext_call.return_data[0] != 'SE':
                                                                                                                                                                                                            if ext_call.return_data[0] != 'GB':
                                                                                                                                                                                                                return 1
                                                        s = 0
                                                        idx = 0
                                                        while idx < providers.length:
                                                            mem[0] = 1
                                                            mem[100] = arg2
                                                            mem[132] = 'accredited'
                                                            require ext_code.size(providers[idx].field_0)
                                                            call providers[idx].field_0.getProperty(address rg1, bytes32 rg2) with:
                                                                 gas gas_remaining - 710 wei
                                                                args address(arg2), 'accredited'
                                                            mem[96] = ext_call.return_data[0]
                                                            require ext_call.success
                                                            if not ext_call.return_data[0]:
                                                                s = ext_call.return_data[0]
                                                                idx = idx + 1
                                                                continue 
                                                            return 1
                                                        return 0
                                                    else:
                                                        return 0
                                                else:
                                                    return 0
                                            else:
                                                return 0
                                        else:
                                            return 0
                                    else:
                                        return 0
                                else:
                                    return 0
                            else:
                                return 0
                        else:
                            return 0
                    else:
                        return 0
                return 0
            else:
                return 0
        return 0
    else:
        return 0
}



}
