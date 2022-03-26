contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[55 len 2556]
}



// =====================  Runtime code  =====================


address owner;
array of address lastContract;
address beneficiaryAddress;
uint256 buildingCostWei;
array of uint256 securityCheckURI;

function beneficiary() {
    return beneficiaryAddress
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

function kill() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert 
}

function delegate(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setCost(uint256 arg1) {
    require owner == msg.sender
    buildingCostWei = arg1
}

function setBeneficiary(address arg1) {
    require owner == msg.sender
    beneficiaryAddress = arg1
}

function setSecurityCheck(string arg1) {
    require owner == msg.sender
    securityCheckURI[] = Array(len=arg1.length, data=arg1[all])
}

function sub_6cb2c92a(?) payable {
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
    require ext_code.size(arg2)
    call arg2.get(string rg1) with:
         gas gas_remaining - 50 wei
        args Array(len=10, data='ACLStorage')
    require ext_call.success
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 388 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 484 len arg3.length] = arg3[all]
        if not arg3.length % 32:
            require ext_code.size(0x5f1c64427c466f2f540040c4386ee64a7cc19955)
            delegate 0x5f1c64427c466f2f540040c4386ee64a7cc19955.0xfe9ea33b with:
                 gas gas_remaining - 50 wei
                args 192, arg1.length + 224, 0, 0, address(ext_call.return_data[0]), arg1.length + 288, arg1.length, arg1[all], 4, 'IPMU', arg3.length, arg3[all]
        else:
            mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 484] = mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + -(arg3.length % 32) + 516 len arg3.length % 32]
            require ext_code.size(0x5f1c64427c466f2f540040c4386ee64a7cc19955)
            delegate 0x5f1c64427c466f2f540040c4386ee64a7cc19955.0xfe9ea33b with:
                 gas gas_remaining - 50 wei
                args 192, arg1.length + 224, 0, 0, address(ext_call.return_data[0]), arg1.length + 288, arg1.length, arg1[all], 4, 'IPMU', arg3.length, arg3[all], mem[ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + arg3.length + 484 len -(arg3.length % 32) + 32]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg3.length) + 388] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg3.length) + -(arg1.length % 32) + 420 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg3.length) + 516 len arg3.length] = arg3[all]
        if not arg3.length % 32:
            require ext_code.size(0x5f1c64427c466f2f540040c4386ee64a7cc19955)
            delegate 0x5f1c64427c466f2f540040c4386ee64a7cc19955.0xfe9ea33b with:
                 gas gas_remaining - 50 wei
                args 192, floor32(arg1.length) + 256, 0, 0, address(ext_call.return_data[0]), floor32(arg1.length) + 320, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 388 len -(arg1.length % 32) + 32], 4, 'IPMU', arg3.length, arg3[all]
        else:
            mem[floor32(arg3.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg3.length) + 516] = mem[floor32(arg3.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg3.length) + -(arg3.length % 32) + 548 len arg3.length % 32]
            require ext_code.size(0x5f1c64427c466f2f540040c4386ee64a7cc19955)
            delegate 0x5f1c64427c466f2f540040c4386ee64a7cc19955.0xfe9ea33b with:
                 gas gas_remaining - 50 wei
                args 192, floor32(arg1.length) + 256, 0, 0, address(ext_call.return_data[0]), floor32(arg1.length) + 320, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 388 len -(arg1.length % 32) + 32], 4, 'IPMU', arg3.length, arg3[all], mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + arg3.length + 516 len -(arg3.length % 32) + 32]
    require delegate.return_code
    require ext_code.size(arg2)
    call arg2.first() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(0x6b3d6ee670f877af7600848231a418ad1aca9ea)
    delegate 0x6b3d6ee670f877af7600848231a418ad1aca9ea.'>hh
' with:
         gas gas_remaining - 50 wei
        args address(ext_call.return_data[0]), address(delegate.return_data[0])
    require delegate.return_code
    require ext_code.size(address(delegate.return_data[0]))
    if arg4:
        call address(delegate.return_data[0]).0x5c19a95c with:
             gas gas_remaining - 50 wei
            args arg4
        require ext_call.success
        require ext_code.size(address(delegate.return_data[0]))
        call address(delegate.return_data[0]).0x5c19a95c with:
             gas gas_remaining - 50 wei
            args arg4
    else:
        call address(delegate.return_data[0]).0x5c19a95c with:
             gas gas_remaining - 50 wei
            args msg.sender
        require ext_call.success
        require ext_code.size(address(delegate.return_data[0]))
        call address(delegate.return_data[0]).0x5c19a95c with:
             gas gas_remaining - 50 wei
            args msg.sender
    require ext_call.success
    return address(delegate.return_data[0])
}



}
