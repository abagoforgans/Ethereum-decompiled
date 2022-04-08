contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = msg.sender
    return code.data[65 len 2836]
}



// =====================  Runtime code  =====================


address owner;
address hammerAddress;
array of address lastContract;
address beneficiaryAddress;
uint256 buildingCostWei;
array of uint256 securityCheckURI;

function beneficiary() {
    return beneficiaryAddress
}

function hammer() {
    return hammerAddress
}

function buildingCostWei() {
    return buildingCostWei
}

function owner() {
    return owner
}

function getLastContract() {
    require uint256(lastContract[address(msg.sender)]) - 1 < uint256(lastContract[address(msg.sender)])
    return address(lastContract[address(msg.sender)][uint256(lastContract[address(msg.sender)])])
}

function getContractsOf(address arg1, uint256 arg2) {
    require arg2 < uint256(lastContract[arg1])
    return address(lastContract[arg1][arg2])
}

function securityCheckURI() {
    return securityCheckURI[0 len securityCheckURI.length]
}

function destroy() {
    require hammerAddress == msg.sender
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setCost(uint256 arg1) {
    require owner == msg.sender
    buildingCostWei = arg1
}

function setHammer(address arg1) {
    require hammerAddress == msg.sender
    hammerAddress = arg1
}

function setBeneficiary(address arg1) {
    require owner == msg.sender
    beneficiaryAddress = arg1
}

function setSecurityCheck(string arg1) {
    require owner == msg.sender
    securityCheckURI[] = Array(len=arg1.length, data=arg1[all])
}

function create(string arg1, string arg2, address arg3) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    if buildingCostWei <= 0:
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    else:
        if not beneficiaryAddress:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            require msg.value >= buildingCostWei
            call beneficiaryAddress with:
               value buildingCostWei wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            if msg.value > buildingCostWei:
                call msg.sender with:
                   value msg.value - buildingCostWei wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0x198e2b8a00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = 64
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 228] = arg1.length
    if arg3:
        if not arg1.length:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = arg1.length + 96
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 260] = arg2.length
            if not arg2.length:
                if not arg2.length % 32:
                    if ext_code.size(0xc9cc2cb82802c4f4a35da94473172d8e3beaed24):
                        delegate 0xc9cc2cb82802c4f4a35da94473172d8e3beaed24.0x198e2b8a with:
                             gas gas_remaining - 710 wei
                            args Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 260 len arg2.length + arg1.length + 32]), arg1.length + 96
                        if delegate.return_code:
                            uint256(lastContract[address(arg3)])++
                            if not uint256(lastContract[address(arg3)]) <= uint256(lastContract[address(arg3)]) + 1:
                                idx = uint256(lastContract[address(arg3)]) + 1
                                while uint256(lastContract[address(arg3)]) > idx:
                                    uint256(lastContract[address(arg3)][idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(lastContract[address(arg3)][uint256(lastContract[address(arg3)])]) = address(delegate.return_data[0])
                            emit Builded(arg3, address(delegate.return_data[0]));
                            if ext_code.size(address(delegate.return_data[0])):
                                call address(delegate.return_data[0]).0x13af4035 with:
                                     gas gas_remaining - 710 wei
                                    args arg3
                                if ext_call.success:
                                    if ext_code.size(address(delegate.return_data[0])):
                                        call address(delegate.return_data[0]).0xd31fdffd with:
                                             gas gas_remaining - 710 wei
                                            args arg3
                                        if ext_call.success:
                                            return address(delegate.return_data[0])
                else:
                    mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 292] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 324 len arg2.length % 32]
                    if ext_code.size(0xc9cc2cb82802c4f4a35da94473172d8e3beaed24):
                        delegate 0xc9cc2cb82802c4f4a35da94473172d8e3beaed24.0x198e2b8a with:
                             gas gas_remaining - 710 wei
                            args Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 260 len floor32(arg2.length) + arg1.length + 64]), arg1.length + 96
                        if delegate.return_code:
                            uint256(lastContract[address(arg3)])++
                            if not uint256(lastContract[address(arg3)]) <= uint256(lastContract[address(arg3)]) + 1:
                                idx = uint256(lastContract[address(arg3)]) + 1
                                while uint256(lastContract[address(arg3)]) > idx:
                                    uint256(lastContract[address(arg3)][idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(lastContract[address(arg3)][uint256(lastContract[address(arg3)])]) = address(delegate.return_data[0])
                            emit Builded(arg3, address(delegate.return_data[0]));
                            if ext_code.size(address(delegate.return_data[0])):
                                call address(delegate.return_data[0]).0x13af4035 with:
                                     gas gas_remaining - 710 wei
                                    args arg3
                                if ext_call.success:
                                    if ext_code.size(address(delegate.return_data[0])):
                                        call address(delegate.return_data[0]).0xd31fdffd with:
                                             gas gas_remaining - 710 wei
                                            args arg3
                                        if ext_call.success:
                                            return address(delegate.return_data[0])
            else:
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 292] = mem[ceil32(arg1.length) + 160]
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 324 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                if not arg2.length % 32:
                    if ext_code.size(0xc9cc2cb82802c4f4a35da94473172d8e3beaed24):
                        delegate 0xc9cc2cb82802c4f4a35da94473172d8e3beaed24.0x198e2b8a with:
                             gas gas_remaining - 710 wei
                            args Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 260 len arg2.length + arg1.length + 32]), arg1.length + 96
                        if delegate.return_code:
                            uint256(lastContract[address(arg3)])++
                            if not uint256(lastContract[address(arg3)]) <= uint256(lastContract[address(arg3)]) + 1:
                                idx = uint256(lastContract[address(arg3)]) + 1
                                while uint256(lastContract[address(arg3)]) > idx:
                                    uint256(lastContract[address(arg3)][idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(lastContract[address(arg3)][uint256(lastContract[address(arg3)])]) = address(delegate.return_data[0])
                            emit Builded(arg3, address(delegate.return_data[0]));
                            if ext_code.size(address(delegate.return_data[0])):
                                call address(delegate.return_data[0]).0x13af4035 with:
                                     gas gas_remaining - 710 wei
                                    args arg3
                                if ext_call.success:
                                    if ext_code.size(address(delegate.return_data[0])):
                                        call address(delegate.return_data[0]).0xd31fdffd with:
                                             gas gas_remaining - 710 wei
                                            args arg3
                                        if ext_call.success:
                                            return address(delegate.return_data[0])
                else:
                    mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 292] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 324 len arg2.length % 32]
                    if ext_code.size(0xc9cc2cb82802c4f4a35da94473172d8e3beaed24):
                        delegate 0xc9cc2cb82802c4f4a35da94473172d8e3beaed24.0x198e2b8a with:
                             gas gas_remaining - 710 wei
                            args Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 260 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 324 len floor32(arg2.length)]), arg1.length + 96
                        if delegate.return_code:
                            uint256(lastContract[address(arg3)])++
                            if not uint256(lastContract[address(arg3)]) <= uint256(lastContract[address(arg3)]) + 1:
                                idx = uint256(lastContract[address(arg3)]) + 1
                                while uint256(lastContract[address(arg3)]) > idx:
                                    uint256(lastContract[address(arg3)][idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(lastContract[address(arg3)][uint256(lastContract[address(arg3)])]) = address(delegate.return_data[0])
                            emit Builded(arg3, address(delegate.return_data[0]));
                            if ext_code.size(address(delegate.return_data[0])):
                                call address(delegate.return_data[0]).0x13af4035 with:
                                     gas gas_remaining - 710 wei
                                    args arg3
                                if ext_call.success:
                                    if ext_code.size(address(delegate.return_data[0])):
                                        call address(delegate.return_data[0]).0xd31fdffd with:
                                             gas gas_remaining - 710 wei
                                            args arg3
                                        if ext_call.success:
                                            return address(delegate.return_data[0])
        else:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 260] = mem[128]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 292 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = arg1.length + 96
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 260] = arg2.length
            if arg2.length:
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 292] = mem[ceil32(arg1.length) + 160]
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 324 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
            if not arg2.length % 32:
                if ext_code.size(0xc9cc2cb82802c4f4a35da94473172d8e3beaed24):
                    delegate 0xc9cc2cb82802c4f4a35da94473172d8e3beaed24.0x198e2b8a with:
                         gas gas_remaining - 710 wei
                        args Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 292 len arg2.length + arg1.length]), arg1.length + 96
                    if delegate.return_code:
                        uint256(lastContract[address(arg3)])++
                        if not uint256(lastContract[address(arg3)]) <= uint256(lastContract[address(arg3)]) + 1:
                            idx = uint256(lastContract[address(arg3)]) + 1
                            while uint256(lastContract[address(arg3)]) > idx:
                                uint256(lastContract[address(arg3)][idx]) = 0
                                idx = idx + 1
                                continue 
                        address(lastContract[address(arg3)][uint256(lastContract[address(arg3)])]) = address(delegate.return_data[0])
                        emit Builded(arg3, address(delegate.return_data[0]));
                        if ext_code.size(address(delegate.return_data[0])):
                            call address(delegate.return_data[0]).0x13af4035 with:
                                 gas gas_remaining - 710 wei
                                args arg3
                            if ext_call.success:
                                if ext_code.size(address(delegate.return_data[0])):
                                    call address(delegate.return_data[0]).0xd31fdffd with:
                                         gas gas_remaining - 710 wei
                                        args arg3
                                    if ext_call.success:
                                        return address(delegate.return_data[0])
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 292] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 324 len arg2.length % 32]
                if ext_code.size(0xc9cc2cb82802c4f4a35da94473172d8e3beaed24):
                    delegate 0xc9cc2cb82802c4f4a35da94473172d8e3beaed24.0x198e2b8a with:
                         gas gas_remaining - 710 wei
                        args Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 292 len floor32(arg2.length) + arg1.length + 32]), arg1.length + 96
                    if delegate.return_code:
                        uint256(lastContract[address(arg3)])++
                        if not uint256(lastContract[address(arg3)]) <= uint256(lastContract[address(arg3)]) + 1:
                            idx = uint256(lastContract[address(arg3)]) + 1
                            while uint256(lastContract[address(arg3)]) > idx:
                                uint256(lastContract[address(arg3)][idx]) = 0
                                idx = idx + 1
                                continue 
                        address(lastContract[address(arg3)][uint256(lastContract[address(arg3)])]) = address(delegate.return_data[0])
                        emit Builded(arg3, address(delegate.return_data[0]));
                        if ext_code.size(address(delegate.return_data[0])):
                            call address(delegate.return_data[0]).0x13af4035 with:
                                 gas gas_remaining - 710 wei
                                args arg3
                            if ext_call.success:
                                if ext_code.size(address(delegate.return_data[0])):
                                    call address(delegate.return_data[0]).0xd31fdffd with:
                                         gas gas_remaining - 710 wei
                                        args arg3
                                    if ext_call.success:
                                        return address(delegate.return_data[0])
    else:
        if not arg1.length:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = arg1.length + 96
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 260] = arg2.length
            if not arg2.length:
                if not arg2.length % 32:
                    if ext_code.size(0xc9cc2cb82802c4f4a35da94473172d8e3beaed24):
                        delegate 0xc9cc2cb82802c4f4a35da94473172d8e3beaed24.0x198e2b8a with:
                             gas gas_remaining - 710 wei
                            args Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 260 len arg2.length + arg1.length + 32]), arg1.length + 96
                        if delegate.return_code:
                            uint256(lastContract[address(msg.sender)])++
                            if not uint256(lastContract[address(msg.sender)]) <= uint256(lastContract[address(msg.sender)]) + 1:
                                idx = uint256(lastContract[address(msg.sender)]) + 1
                                while uint256(lastContract[address(msg.sender)]) > idx:
                                    uint256(lastContract[address(msg.sender)][idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(lastContract[address(msg.sender)][uint256(lastContract[address(msg.sender)])]) = address(delegate.return_data[0])
                            emit Builded(msg.sender, address(delegate.return_data[0]));
                            if ext_code.size(address(delegate.return_data[0])):
                                call address(delegate.return_data[0]).0x13af4035 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender
                                if ext_call.success:
                                    if ext_code.size(address(delegate.return_data[0])):
                                        call address(delegate.return_data[0]).0xd31fdffd with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender
                                        if ext_call.success:
                                            return address(delegate.return_data[0])
                else:
                    mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 292] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 324 len arg2.length % 32]
                    if ext_code.size(0xc9cc2cb82802c4f4a35da94473172d8e3beaed24):
                        delegate 0xc9cc2cb82802c4f4a35da94473172d8e3beaed24.0x198e2b8a with:
                             gas gas_remaining - 710 wei
                            args Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 260 len floor32(arg2.length) + arg1.length + 64]), arg1.length + 96
                        if delegate.return_code:
                            uint256(lastContract[address(msg.sender)])++
                            if not uint256(lastContract[address(msg.sender)]) <= uint256(lastContract[address(msg.sender)]) + 1:
                                idx = uint256(lastContract[address(msg.sender)]) + 1
                                while uint256(lastContract[address(msg.sender)]) > idx:
                                    uint256(lastContract[address(msg.sender)][idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(lastContract[address(msg.sender)][uint256(lastContract[address(msg.sender)])]) = address(delegate.return_data[0])
                            emit Builded(msg.sender, address(delegate.return_data[0]));
                            if ext_code.size(address(delegate.return_data[0])):
                                call address(delegate.return_data[0]).0x13af4035 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender
                                if ext_call.success:
                                    if ext_code.size(address(delegate.return_data[0])):
                                        call address(delegate.return_data[0]).0xd31fdffd with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender
                                        if ext_call.success:
                                            return address(delegate.return_data[0])
            else:
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 292] = mem[ceil32(arg1.length) + 160]
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 324 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                if not arg2.length % 32:
                    if ext_code.size(0xc9cc2cb82802c4f4a35da94473172d8e3beaed24):
                        delegate 0xc9cc2cb82802c4f4a35da94473172d8e3beaed24.0x198e2b8a with:
                             gas gas_remaining - 710 wei
                            args Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 260 len arg2.length + arg1.length + 32]), arg1.length + 96
                        if delegate.return_code:
                            uint256(lastContract[address(msg.sender)])++
                            if not uint256(lastContract[address(msg.sender)]) <= uint256(lastContract[address(msg.sender)]) + 1:
                                idx = uint256(lastContract[address(msg.sender)]) + 1
                                while uint256(lastContract[address(msg.sender)]) > idx:
                                    uint256(lastContract[address(msg.sender)][idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(lastContract[address(msg.sender)][uint256(lastContract[address(msg.sender)])]) = address(delegate.return_data[0])
                            emit Builded(msg.sender, address(delegate.return_data[0]));
                            if ext_code.size(address(delegate.return_data[0])):
                                call address(delegate.return_data[0]).0x13af4035 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender
                                if ext_call.success:
                                    if ext_code.size(address(delegate.return_data[0])):
                                        call address(delegate.return_data[0]).0xd31fdffd with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender
                                        if ext_call.success:
                                            return address(delegate.return_data[0])
                else:
                    mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 292] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 324 len arg2.length % 32]
                    if ext_code.size(0xc9cc2cb82802c4f4a35da94473172d8e3beaed24):
                        delegate 0xc9cc2cb82802c4f4a35da94473172d8e3beaed24.0x198e2b8a with:
                             gas gas_remaining - 710 wei
                            args Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 260 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 324 len floor32(arg2.length)]), arg1.length + 96
                        if delegate.return_code:
                            uint256(lastContract[address(msg.sender)])++
                            if not uint256(lastContract[address(msg.sender)]) <= uint256(lastContract[address(msg.sender)]) + 1:
                                idx = uint256(lastContract[address(msg.sender)]) + 1
                                while uint256(lastContract[address(msg.sender)]) > idx:
                                    uint256(lastContract[address(msg.sender)][idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(lastContract[address(msg.sender)][uint256(lastContract[address(msg.sender)])]) = address(delegate.return_data[0])
                            emit Builded(msg.sender, address(delegate.return_data[0]));
                            if ext_code.size(address(delegate.return_data[0])):
                                call address(delegate.return_data[0]).0x13af4035 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender
                                if ext_call.success:
                                    if ext_code.size(address(delegate.return_data[0])):
                                        call address(delegate.return_data[0]).0xd31fdffd with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender
                                        if ext_call.success:
                                            return address(delegate.return_data[0])
        else:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 260] = mem[128]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 292 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = arg1.length + 96
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 260] = arg2.length
            if arg2.length:
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 292] = mem[ceil32(arg1.length) + 160]
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 324 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
            if not arg2.length % 32:
                if ext_code.size(0xc9cc2cb82802c4f4a35da94473172d8e3beaed24):
                    delegate 0xc9cc2cb82802c4f4a35da94473172d8e3beaed24.0x198e2b8a with:
                         gas gas_remaining - 710 wei
                        args Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 292 len arg2.length + arg1.length]), arg1.length + 96
                    if delegate.return_code:
                        uint256(lastContract[address(msg.sender)])++
                        if not uint256(lastContract[address(msg.sender)]) <= uint256(lastContract[address(msg.sender)]) + 1:
                            idx = uint256(lastContract[address(msg.sender)]) + 1
                            while uint256(lastContract[address(msg.sender)]) > idx:
                                uint256(lastContract[address(msg.sender)][idx]) = 0
                                idx = idx + 1
                                continue 
                        address(lastContract[address(msg.sender)][uint256(lastContract[address(msg.sender)])]) = address(delegate.return_data[0])
                        emit Builded(msg.sender, address(delegate.return_data[0]));
                        if ext_code.size(address(delegate.return_data[0])):
                            call address(delegate.return_data[0]).0x13af4035 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender
                            if ext_call.success:
                                if ext_code.size(address(delegate.return_data[0])):
                                    call address(delegate.return_data[0]).0xd31fdffd with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender
                                    if ext_call.success:
                                        return address(delegate.return_data[0])
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 292] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 324 len arg2.length % 32]
                if ext_code.size(0xc9cc2cb82802c4f4a35da94473172d8e3beaed24):
                    delegate 0xc9cc2cb82802c4f4a35da94473172d8e3beaed24.0x198e2b8a with:
                         gas gas_remaining - 710 wei
                        args Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 292 len floor32(arg2.length) + arg1.length + 32]), arg1.length + 96
                    if delegate.return_code:
                        uint256(lastContract[address(msg.sender)])++
                        if not uint256(lastContract[address(msg.sender)]) <= uint256(lastContract[address(msg.sender)]) + 1:
                            idx = uint256(lastContract[address(msg.sender)]) + 1
                            while uint256(lastContract[address(msg.sender)]) > idx:
                                uint256(lastContract[address(msg.sender)][idx]) = 0
                                idx = idx + 1
                                continue 
                        address(lastContract[address(msg.sender)][uint256(lastContract[address(msg.sender)])]) = address(delegate.return_data[0])
                        emit Builded(msg.sender, address(delegate.return_data[0]));
                        if ext_code.size(address(delegate.return_data[0])):
                            call address(delegate.return_data[0]).0x13af4035 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender
                            if ext_call.success:
                                if ext_code.size(address(delegate.return_data[0])):
                                    call address(delegate.return_data[0]).0xd31fdffd with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender
                                    if ext_call.success:
                                        return address(delegate.return_data[0])
    revert
}



}
