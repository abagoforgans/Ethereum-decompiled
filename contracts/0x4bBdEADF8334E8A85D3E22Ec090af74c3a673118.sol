contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
address stor5;
array of uint256 stor6;
uint8 stor8;
address stor8; offset 8
uint256 stor9;

function _fallback() payable {
    uint8(stor8.field_0) = 0
    require not msg.value
    mem[96 len -5961] = code.data[7019 len -5961]
    mem[64] = -5865
    stor2[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    mem[0] = 3
    stor3[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    mem[-3207] = mem[mem[160] + 96]
    _5521 = mem[mem[160] + 96]
    mem[-3175 len ceil32(mem[mem[160] + 96])] = mem[mem[160] + 128 len ceil32(mem[mem[160] + 96])]
    if not _5521 % 32:
        mem[_5521 - 3175] = mem[mem[192] + 96]
        _6752 = mem[mem[192] + 96]
        mem[_5521 - 3143 len ceil32(mem[mem[192] + 96])] = mem[mem[192] + 128 len ceil32(mem[mem[192] + 96])]
        if not _6752 % 32:
            create contract with 0 wei
                            code: code.data[4425 len 2594], Array(len=_5521 + 96, data=mem[-3207 len _6752 + _5521 + 64])
            require create.new_address
            stor0 = address(create.new_address)
            mem[-3207] = mem[mem[224] + 96]
            _8283 = mem[mem[224] + 96]
            mem[-3175 len ceil32(mem[mem[224] + 96])] = mem[mem[224] + 128 len ceil32(mem[mem[224] + 96])]
            if not _8283 % 32:
                mem[_8283 - 3175] = mem[mem[256] + 96]
                _9017 = mem[mem[256] + 96]
                mem[_8283 - 3143 len ceil32(mem[mem[256] + 96])] = mem[mem[256] + 128 len ceil32(mem[mem[256] + 96])]
                if not _9017 % 32:
                    create contract with 0 wei
                                    code: code.data[4425 len 2594], Array(len=_8283 + 96, data=mem[-3207 len _9017 + _8283 + 64])
                else:
                    mem[floor32(_9017) + _8283 - 3143] = mem[floor32(_9017) + _8283 + -(_9017 % 32) - 3111 len _9017 % 32]
                    create contract with 0 wei
                                    code: code.data[4425 len 2594], Array(len=_8283 + 96, data=mem[-3207 len floor32(_9017) + _8283 + 96])
            else:
                mem[floor32(_8283) - 3175] = mem[floor32(_8283) + -(_8283 % 32) - 3143 len _8283 % 32]
                mem[floor32(_8283) - 3143] = mem[mem[256] + 96]
                _9093 = mem[mem[256] + 96]
                mem[floor32(_8283) - 3111 len ceil32(mem[mem[256] + 96])] = mem[mem[256] + 128 len ceil32(mem[mem[256] + 96])]
                if not _9093 % 32:
                    create contract with 0 wei
                                    code: code.data[4425 len 2594], Array(len=floor32(_8283) + 128, data=mem[-3207 len _9093 + floor32(_8283) + 96])
                else:
                    mem[floor32(_9093) + floor32(_8283) - 3111] = mem[floor32(_9093) + floor32(_8283) + -(_9093 % 32) - 3079 len _9093 % 32]
                    create contract with 0 wei
                                    code: code.data[4425 len 2594], Array(len=floor32(_8283) + 128, data=mem[-3207 len floor32(_9093) + floor32(_8283) + 128])
        else:
            mem[floor32(_6752) + _5521 - 3143] = mem[floor32(_6752) + _5521 + -(_6752 % 32) - 3111 len _6752 % 32]
            create contract with 0 wei
                            code: code.data[4425 len 2594], Array(len=_5521 + 96, data=mem[-3207 len floor32(_6752) + _5521 + 96])
            require create.new_address
            stor0 = address(create.new_address)
            mem[-3207] = mem[mem[224] + 96]
            _8393 = mem[mem[224] + 96]
            mem[-3175 len ceil32(mem[mem[224] + 96])] = mem[mem[224] + 128 len ceil32(mem[mem[224] + 96])]
            if not _8393 % 32:
                mem[_8393 - 3175] = mem[mem[256] + 96]
                _9020 = mem[mem[256] + 96]
                mem[_8393 - 3143 len ceil32(mem[mem[256] + 96])] = mem[mem[256] + 128 len ceil32(mem[mem[256] + 96])]
                if not _9020 % 32:
                    create contract with 0 wei
                                    code: code.data[4425 len 2594], Array(len=_8393 + 96, data=mem[-3207 len _9020 + _8393 + 64])
                else:
                    mem[floor32(_9020) + _8393 - 3143] = mem[floor32(_9020) + _8393 + -(_9020 % 32) - 3111 len _9020 % 32]
                    create contract with 0 wei
                                    code: code.data[4425 len 2594], Array(len=_8393 + 96, data=mem[-3207 len floor32(_9020) + _8393 + 96])
            else:
                mem[floor32(_8393) - 3175] = mem[floor32(_8393) + -(_8393 % 32) - 3143 len _8393 % 32]
                mem[floor32(_8393) - 3143] = mem[mem[256] + 96]
                _9095 = mem[mem[256] + 96]
                mem[floor32(_8393) - 3111 len ceil32(mem[mem[256] + 96])] = mem[mem[256] + 128 len ceil32(mem[mem[256] + 96])]
                if not _9095 % 32:
                    create contract with 0 wei
                                    code: code.data[4425 len 2594], Array(len=floor32(_8393) + 128, data=mem[-3207 len _9095 + floor32(_8393) + 96])
                else:
                    mem[floor32(_9095) + floor32(_8393) - 3111] = mem[floor32(_9095) + floor32(_8393) + -(_9095 % 32) - 3079 len _9095 % 32]
                    create contract with 0 wei
                                    code: code.data[4425 len 2594], Array(len=floor32(_8393) + 128, data=mem[-3207 len floor32(_9095) + floor32(_8393) + 128])
    else:
        mem[floor32(_5521) - 3175] = mem[floor32(_5521) + -(_5521 % 32) - 3143 len _5521 % 32]
        mem[floor32(_5521) - 3143] = mem[mem[192] + 96]
        _6807 = mem[mem[192] + 96]
        mem[floor32(_5521) - 3111 len ceil32(mem[mem[192] + 96])] = mem[mem[192] + 128 len ceil32(mem[mem[192] + 96])]
        if not _6807 % 32:
            create contract with 0 wei
                            code: code.data[4425 len 2594], Array(len=floor32(_5521) + 128, data=mem[-3207 len _6807 + floor32(_5521) + 96])
            require create.new_address
            stor0 = address(create.new_address)
            mem[-3207] = mem[mem[224] + 96]
            _8286 = mem[mem[224] + 96]
            mem[-3175 len ceil32(mem[mem[224] + 96])] = mem[mem[224] + 128 len ceil32(mem[mem[224] + 96])]
            if not _8286 % 32:
                mem[_8286 - 3175] = mem[mem[256] + 96]
                _9023 = mem[mem[256] + 96]
                mem[_8286 - 3143 len ceil32(mem[mem[256] + 96])] = mem[mem[256] + 128 len ceil32(mem[mem[256] + 96])]
                if not _9023 % 32:
                    create contract with 0 wei
                                    code: code.data[4425 len 2594], Array(len=_8286 + 96, data=mem[-3207 len _9023 + _8286 + 64])
                else:
                    mem[floor32(_9023) + _8286 - 3143] = mem[floor32(_9023) + _8286 + -(_9023 % 32) - 3111 len _9023 % 32]
                    create contract with 0 wei
                                    code: code.data[4425 len 2594], Array(len=_8286 + 96, data=mem[-3207 len floor32(_9023) + _8286 + 96])
            else:
                mem[floor32(_8286) - 3175] = mem[floor32(_8286) + -(_8286 % 32) - 3143 len _8286 % 32]
                mem[floor32(_8286) - 3143] = mem[mem[256] + 96]
                _9097 = mem[mem[256] + 96]
                mem[floor32(_8286) - 3111 len ceil32(mem[mem[256] + 96])] = mem[mem[256] + 128 len ceil32(mem[mem[256] + 96])]
                if not _9097 % 32:
                    create contract with 0 wei
                                    code: code.data[4425 len 2594], Array(len=floor32(_8286) + 128, data=mem[-3207 len _9097 + floor32(_8286) + 96])
                else:
                    mem[floor32(_9097) + floor32(_8286) - 3111] = mem[floor32(_9097) + floor32(_8286) + -(_9097 % 32) - 3079 len _9097 % 32]
                    create contract with 0 wei
                                    code: code.data[4425 len 2594], Array(len=floor32(_8286) + 128, data=mem[-3207 len floor32(_9097) + floor32(_8286) + 128])
        else:
            mem[floor32(_6807) + floor32(_5521) - 3111] = mem[floor32(_6807) + floor32(_5521) + -(_6807 % 32) - 3079 len _6807 % 32]
            create contract with 0 wei
                            code: code.data[4425 len 2594], Array(len=floor32(_5521) + 128, data=mem[-3207 len floor32(_6807) + floor32(_5521) + 128])
            require create.new_address
            stor0 = address(create.new_address)
            mem[-3207] = mem[mem[224] + 96]
            _8395 = mem[mem[224] + 96]
            mem[-3175 len ceil32(mem[mem[224] + 96])] = mem[mem[224] + 128 len ceil32(mem[mem[224] + 96])]
            if not _8395 % 32:
                mem[_8395 - 3175] = mem[mem[256] + 96]
                _9026 = mem[mem[256] + 96]
                mem[_8395 - 3143 len ceil32(mem[mem[256] + 96])] = mem[mem[256] + 128 len ceil32(mem[mem[256] + 96])]
                if not _9026 % 32:
                    create contract with 0 wei
                                    code: code.data[4425 len 2594], Array(len=_8395 + 96, data=mem[-3207 len _9026 + _8395 + 64])
                else:
                    mem[floor32(_9026) + _8395 - 3143] = mem[floor32(_9026) + _8395 + -(_9026 % 32) - 3111 len _9026 % 32]
                    create contract with 0 wei
                                    code: code.data[4425 len 2594], Array(len=_8395 + 96, data=mem[-3207 len floor32(_9026) + _8395 + 96])
            else:
                mem[floor32(_8395) - 3175] = mem[floor32(_8395) + -(_8395 % 32) - 3143 len _8395 % 32]
                mem[floor32(_8395) - 3143] = mem[mem[256] + 96]
                _9099 = mem[mem[256] + 96]
                mem[floor32(_8395) - 3111 len ceil32(mem[mem[256] + 96])] = mem[mem[256] + 128 len ceil32(mem[mem[256] + 96])]
                if not _9099 % 32:
                    create contract with 0 wei
                                    code: code.data[4425 len 2594], Array(len=floor32(_8395) + 128, data=mem[-3207 len _9099 + floor32(_8395) + 96])
                else:
                    mem[floor32(_9099) + floor32(_8395) - 3111] = mem[floor32(_9099) + floor32(_8395) + -(_9099 % 32) - 3079 len _9099 % 32]
                    create contract with 0 wei
                                    code: code.data[4425 len 2594], Array(len=floor32(_8395) + 128, data=mem[-3207 len floor32(_9099) + floor32(_8395) + 128])
    require create.new_address
    stor1 = address(create.new_address)
    stor4 = mem[288]
    stor5 = mem[332 len 20]
    stor6[] = Array(len=mem[mem[352] + 96], data=mem[mem[352] + 128 len mem[mem[352] + 96]])
    address(stor8.field_8) = mem[396 len 20]
    stor9 = mem[416]
    return code.data[1058 len 3367]
}



// =====================  Runtime code  =====================


address yesTokenAddress;
address noTokenAddress;
array of uint256 name;
array of uint256 symbol;
uint256 factHash;
address ethAddr;
array of uint256 url;
uint256 outcome;
uint8 stor8;
address feeAccount; offset 8
uint256 fee;

function name() {
    return name[0 len name.length]
}

function noToken() {
    return noTokenAddress
}

function outcome() {
    return outcome
}

function resolved() {
    return bool(stor8)
}

function url() {
    return url[0 len url.length]
}

function feeAccount() {
    return feeAccount
}

function factHash() {
    return factHash
}

function symbol() {
    return symbol[0 len symbol.length]
}

function ethAddr() {
    return ethAddr
}

function fee() {
    return fee
}

function yesToken() {
    return yesTokenAddress
}

function resolve(uint8 arg1, bytes32 arg2, bytes32 arg3, bytes32 arg4) {
    signer = erecover(sha3(factHash, arg4), arg1 << 248, arg2, arg3) 
    require erecover.result
    require address(signer) == ethAddr
    require not stor8
    if arg4:
        require 1 == arg4
    outcome = arg4
    stor8 = 1
    emit Resolve(1, arg4);
}

function create() payable {
    require ext_code.size(yesTokenAddress)
    call yesTokenAddress.create(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value
    require ext_call.success
    require ext_code.size(noTokenAddress)
    call noTokenAddress.create(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value
    require ext_call.success
    emit Create(msg.value, msg.sender);
}

function _fallback() payable {
    require ext_code.size(yesTokenAddress)
    call yesTokenAddress.create(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value
    require ext_call.success
    require ext_code.size(noTokenAddress)
    call noTokenAddress.create(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value
    require ext_call.success
    emit Create(msg.value, msg.sender);
}

function redeem(uint256 arg1) {
    if arg1:
        require arg1
        require fee * arg1 / arg1 == fee
    call feeAccount with:
       value fee * arg1 / 10^18 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if stor8:
        if not outcome:
            require ext_code.size(noTokenAddress)
            call noTokenAddress.destroy(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg1
            require ext_call.success
            if arg1:
                require arg1
                require (10^18 * arg1) - (fee * arg1) / arg1 == -fee + 10^18
            call msg.sender with:
               value (10^18 * arg1) - (fee * arg1) / 10^18 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Redeem(arg1, 0, arg1, msg.sender);
        else:
            if 1 == outcome:
                require ext_code.size(yesTokenAddress)
                call yesTokenAddress.destroy(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, arg1
                require ext_call.success
                if arg1:
                    require arg1
                    require (10^18 * arg1) - (fee * arg1) / arg1 == -fee + 10^18
                call msg.sender with:
                   value (10^18 * arg1) - (fee * arg1) / 10^18 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Redeem(arg1, arg1, 0, msg.sender);
    else:
        require ext_code.size(yesTokenAddress)
        call yesTokenAddress.destroy(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, arg1
        require ext_call.success
        require ext_code.size(noTokenAddress)
        call noTokenAddress.destroy(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, arg1
        require ext_call.success
        if arg1:
            require arg1
            require (10^18 * arg1) - (fee * arg1) / arg1 == -fee + 10^18
        call msg.sender with:
           value (10^18 * arg1) - (fee * arg1) / 10^18 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Redeem(arg1, arg1, arg1, msg.sender);
}



}
