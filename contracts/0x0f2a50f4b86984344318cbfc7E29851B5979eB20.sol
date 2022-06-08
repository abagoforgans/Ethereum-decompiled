contract main {




// =====================  Runtime code  =====================


address implementationAddress;
address owner;
mapping of uint8 stor2;
mapping of address enabled;
uint256 modules;

function implementation() {
    return implementationAddress
}

function enabled(bytes4 arg1) {
    return enabled[Mask(32, 224, arg1)]
}

function owner() {
    return owner
}

function authorised(address arg1) {
    return bool(stor2[arg1])
}

function modules() {
    return modules
}

function setOwner(address arg1) {
    if not stor2[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BW: msg.sender not an authorize module'
    if not arg1:
        revert with 0, 'BW: address cannot be null'
    owner = arg1
    emit OwnerChanged(arg1);
}

function invoke(address arg1, uint256 arg2, bytes arg3) {
    if not stor2[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BW: msg.sender not an authorize module'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
        args arg3[all]
    if not ext_call.success:
        revert with 0, 'BW: call to target failed'
    emit Invoked(Array(len=arg3.length, data=arg3[all]), msg.sender, arg1, arg2);
}

function enableStaticCall(address arg1, bytes4 arg2) {
    if not stor2[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BW: msg.sender not an authorize module'
    if not stor2[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BW: must be an authorised module for static call'
    enabled[Mask(32, 224, arg2)] = arg1
    emit EnabledStaticCall(arg1, Mask(32, 224, arg2));
}

function _fallback() payable {
    if 0 >= calldata.size:
    if not enabled[call.func_hash]:
        emit Received(Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.value, msg.sender);
    if not stor2[stor3[call.func_hash]]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BW: must be an authorised module for static call'
    staticcall enabled[call.func_hash] with:
         funct call.data[0 len 4]
            gas gas_remaining wei
           args call.data[4 len calldata.size - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function authoriseModule(address arg1, bool arg2) {
    if not stor2[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BW: msg.sender not an authorize module'
    if arg2 != bool(stor2[address(arg1)]):
        if arg2 != 1:
            modules--
            if 0 >= modules - 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BW: wallet must have at least one module'
            stor2[address(arg1)] = 0
        else:
            modules++
            stor2[address(arg1)] = 1
            require ext_code.size(arg1)
            call arg1.init(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        emit AuthorisedModule(arg2, arg1);
}

function init(address arg1, address[] arg2) {
    if owner:
        revert with 0, 'BW: wallet already initialised'
    if modules:
        revert with 0, 'BW: wallet already initialised'
    if arg2.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BW: construction requires at least 1 module'
    owner = arg1
    modules = arg2.length
    idx = 0
    while idx < arg2.length:
        if stor2[address(cd[((32 * idx) + arg2 + 36)])]:
            revert with 0, 'BW: module is already added'
        require idx < arg2.length
        mem[0] = address(cd[((32 * idx) + arg2 + 36)])
        mem[32] = 2
        stor2[address(cd[((32 * idx) + arg2 + 36)])] = 1
        mem[100] = this.address
        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
        call address(cd[((32 * idx) + arg2 + 36)]).init(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < arg2.length
        mem[96] = 1
        emit AuthorisedModule(1, address(cd[((32 * idx) + arg2 + 36)]));
        idx = idx + 1
        continue 
}



}
