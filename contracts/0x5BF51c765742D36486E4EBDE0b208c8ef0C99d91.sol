contract main {




// =====================  Runtime code  =====================


const sub_73c209aa(?) = 5

const sub_d1676089(?) = 10000

const sub_d5375bb0(?) = 30

const sub_e28897a1(?) = 18

const sub_f3bc843e(?) = 'governance'

const BASE_MULTIPLIER = 10^18


address resolverAddress;
array of uint256 sub_374382e3;
array of uint256 sub_26d94911;
address loanTokenAddress;
address debtTokenAddress;
address equityTokenAddress;
address sub_c0924b80Address;
address tokenManagerAddress;
address registryAddress;
address sub_9ff78c30Address;
address sub_85d1ed51Address;
address sub_47225692Address;
array of address collateralTokens;
array of struct loans;
array of struct sub_168639bf;
array of struct sub_a35b0488;
mapping of uint8 stor99;

function sub_0212a80b(?) {
    return loanTokenAddress
}

function resolver() {
    return resolverAddress
}

function loanToken() {
    return loanTokenAddress
}

function sub_168639bf(?) {
    return uint256(sub_168639bf[address(arg1)].field_0)
}

function collateralTokens(uint256 arg1) {
    require arg1 < collateralTokens.length
    return collateralTokens[arg1]
}

function sub_24f34c0c(?) {
    require arg2 < uint256(sub_168639bf[arg1].field_0)
    return uint256(sub_168639bf[arg1][arg2].field_0)
}

function sub_26d94911(?) {
    require arg2 < sub_26d94911[arg1]
    return sub_26d94911[arg1][arg2]
}

function tokenManager() {
    return tokenManagerAddress
}

function sub_374382e3(?) {
    require arg1 < 14
    return sub_374382e3[arg1]
}

function sub_47225692(?) {
    return sub_47225692Address
}

function sub_75c745a6(?) {
    return collateralTokens.length
}

function registry() {
    return registryAddress
}

function sub_85d1ed51(?) {
    return sub_85d1ed51Address
}

function sub_9ff78c30(?) {
    return sub_9ff78c30Address
}

function sub_a35b0488(?) {
    require arg2 < uint256(sub_a35b0488[arg1].field_0)
    return uint256(sub_a35b0488[arg1][arg2].field_0)
}

function getResolver() {
    return resolverAddress
}

function sub_c0924b80(?) {
    return sub_c0924b80Address
}

function equityToken() {
    return equityTokenAddress
}

function loans(uint256 arg1) {
    require arg1 < loans.length
    return uint256(loans[arg1].field_0), 
           uint256(loans[arg1].field_256),
           uint256(loans[arg1].field_512),
           uint256(loans[arg1].field_768),
           address(loans[arg1].field_1024),
           address(loans[arg1].field_1280),
           uint256(loans[arg1].field_1536)
}

function getLoansLength() {
    return loans.length
}

function debtToken() {
    return debtTokenAddress
}

function _fallback() payable {
    revert
}

function getToken(bool arg1) {
    if not arg1:
        return debtTokenAddress
    return equityTokenAddress
}

function getLoan(uint256 arg1) {
    require arg1 < loans.length
    idx = 0
    while idx < 8:
        mem[(32 * idx) + 128] = uint256(stor[idx + (7 * arg1) + 0x3ad8aa4f87544323a9d1e5dd902f40c356527a7955687113db5f9a85ad579dc1])
        idx = idx + 1
        continue 
    return 32, 224, mem[128 len 224]
}

function sub_ee26c576(?) {
    require ext_code.size(registryAddress)
    call registryAddress.0xee26c576 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function getEthereumAddress() {
    require ext_code.size(tokenManagerAddress)
    call tokenManagerAddress.0x17bfdd57 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_3e156fb5(?) {
    require arg2 < uint256(sub_168639bf[address(arg1)].field_0)
    require arg2 < uint256(sub_a35b0488[address(arg1)].field_0)
    require arg2 < uint256(sub_168639bf[address(arg1)].field_0)
    require arg2 < uint256(sub_a35b0488[address(arg1)].field_0)
    return uint256(sub_168639bf[address(arg1)][arg2].field_0), uint256(sub_a35b0488[address(arg1)][arg2].field_0)
}

function getExchangeRate(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(sub_c0924b80Address)
    call sub_c0924b80Address.0x6b441d8a with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 1
    require uint8(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
}

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 1
    mem[ceil32(arg2.length) + 128] = bool(uint8(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]))
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function sub_2b5bcda9(?) {
    if uint256(sub_a35b0488[address(arg1)].field_0):
        mem[128] = uint256(sub_a35b0488[address(arg1)].field_0)
        idx = 128
        s = 0
        while (32 * uint256(sub_a35b0488[address(arg1)].field_0)) + 96 > idx:
            mem[idx + 32] = uint256(sub_a35b0488[address(arg1)][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    if uint256(sub_168639bf[address(arg1)].field_0):
        mem[(32 * uint256(sub_a35b0488[address(arg1)].field_0)) + 160] = uint256(sub_168639bf[address(arg1)].field_0)
        idx = (32 * uint256(sub_a35b0488[address(arg1)].field_0)) + 160
        s = 0
        while (32 * uint256(sub_a35b0488[address(arg1)].field_0)) + (32 * uint256(sub_168639bf[address(arg1)].field_0)) + 128 > idx:
            mem[idx + 32] = uint256(sub_168639bf[address(arg1)][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * uint256(sub_a35b0488[address(arg1)].field_0)) + (32 * uint256(sub_168639bf[address(arg1)].field_0)) + 256 len floor32(uint256(sub_a35b0488[address(arg1)].field_0))] = mem[128 len floor32(uint256(sub_a35b0488[address(arg1)].field_0))]
    mem[(64 * uint256(sub_a35b0488[address(arg1)].field_0)) + (32 * uint256(sub_168639bf[address(arg1)].field_0)) + 256] = uint256(sub_168639bf[address(arg1)].field_0)
    mem[(64 * uint256(sub_a35b0488[address(arg1)].field_0)) + (32 * uint256(sub_168639bf[address(arg1)].field_0)) + 288 len floor32(uint256(sub_168639bf[address(arg1)].field_0))] = mem[(32 * uint256(sub_a35b0488[address(arg1)].field_0)) + 160 len floor32(uint256(sub_168639bf[address(arg1)].field_0))]
    return Array(len=uint256(sub_a35b0488[address(arg1)].field_0), data=mem[128 len floor32(uint256(sub_a35b0488[address(arg1)].field_0))], mem[(32 * uint256(sub_a35b0488[address(arg1)].field_0)) + (32 * uint256(sub_168639bf[address(arg1)].field_0)) + floor32(uint256(sub_a35b0488[address(arg1)].field_0)) + 256 len (32 * uint256(sub_a35b0488[address(arg1)].field_0)) + (32 * uint256(sub_168639bf[address(arg1)].field_0)) + -floor32(uint256(sub_a35b0488[address(arg1)].field_0)) + 32]), 
           (32 * uint256(sub_a35b0488[address(arg1)].field_0)) + 96
}



}
