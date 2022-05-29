contract main {




// =====================  Runtime code  =====================


address owner;
address factoryAddress;
address packageAddress;
array of struct version;

function version() {
    return version[0 len version.length].field_0
}

function owner() {
    return owner
}

function package() {
    return packageAddress
}

function factory() {
    return factoryAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getProxyAdmin(address arg1) {
    require ext_code.size(arg1)
    call arg1.admin() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function changeProxyAdmin(address arg1, address arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.changeAdmin(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getProxyImplementation(address arg1) {
    require ext_code.size(arg1)
    call arg1.implementation() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function setVersion(string arg1) {
    require msg.sender == owner
    require ext_code.size(packageAddress)
    call packageAddress.0xeb0a70c1 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'The requested version must be registered in the given package'
    version[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function getImplementation(string arg1) {
    mem[ceil32(arg1.length) + 196] = uint256(version.field_0)
    idx = ceil32(arg1.length) + 196
    s = 0
    while ceil32(arg1.length) + version.length + 196 > idx + 32:
        mem[idx + 32] = version[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(packageAddress)
    call packageAddress.0x3ab50a9c with:
         gas gas_remaining wei
        args Array(len=version.length, data=mem[ceil32(arg1.length) + 196 len version.length + (floor32(version.length - 1) + -version.length + 32 % 32)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x6b683896 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0])
}

function upgrade(address arg1, string arg2) {
    require msg.sender == owner
    mem[ceil32(arg2.length) + 196] = uint256(version.field_0)
    idx = ceil32(arg2.length) + 196
    s = 0
    while ceil32(arg2.length) + version.length + 196 > idx + 32:
        mem[idx + 32] = version[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(packageAddress)
    call packageAddress.0x3ab50a9c with:
         gas gas_remaining wei
        args Array(len=version.length, data=mem[ceil32(arg2.length) + 196 len version.length + (floor32(version.length - 1) + -version.length + 32 % 32)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x6b683896 with:
         gas gas_remaining wei
        args Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.upgradeTo(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function create(string arg1) {
    mem[ceil32(arg1.length) + 196] = uint256(version.field_0)
    idx = ceil32(arg1.length) + 196
    s = 0
    while ceil32(arg1.length) + version.length + 196 > idx + 32:
        mem[idx + 32] = version[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(packageAddress)
    call packageAddress.0x3ab50a9c with:
         gas gas_remaining wei
        args Array(len=version.length, data=mem[ceil32(arg1.length) + 196 len version.length + (floor32(version.length - 1) + -version.length + 32 % 32)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x6b683896 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(factoryAddress)
    call factoryAddress.0x25b56727 with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0])
}

function upgradeAndCall(address arg1, string arg2, bytes arg3) payable {
    require msg.sender == owner
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 228] = uint256(version.field_0)
    idx = ceil32(arg2.length) + ceil32(arg3.length) + 228
    s = 0
    while ceil32(arg2.length) + ceil32(arg3.length) + version.length + 228 > idx + 32:
        mem[idx + 32] = version[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(packageAddress)
    call packageAddress.0x3ab50a9c with:
         gas gas_remaining wei
        args Array(len=version.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 228 len version.length + (floor32(version.length - 1) + -version.length + 32 % 32)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x6b683896 with:
         gas gas_remaining wei
        args Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.upgradeToAndCall(address arg1, bytes arg2) with:
       value msg.value wei
         gas gas_remaining wei
        args address(ext_call.return_data[0]), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function createAndCall(string arg1, bytes arg2) payable {
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 228] = uint256(version.field_0)
    idx = ceil32(arg1.length) + ceil32(arg2.length) + 228
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + version.length + 228 > idx + 32:
        mem[idx + 32] = version[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(packageAddress)
    call packageAddress.0x3ab50a9c with:
         gas gas_remaining wei
        args Array(len=version.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 228 len version.length + (floor32(version.length - 1) + -version.length + 32 % 32)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x6b683896 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(factoryAddress)
    call factoryAddress.0xc6e8b4f3 with:
       value msg.value wei
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0]), Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0])
}



}
