contract main {




// =====================  Runtime code  =====================


const BANCOR_CONVERTER_UPGRADER = 'BancorConverterUpgrader'

const BNT_TOKEN = 'BNTToken'

const CONTRACT_REGISTRY = 'ContractRegistry'

const BANCOR_CONVERTER_FACTORY = 'BancorConverterFactory'

const BNT_CONVERTER = 'BNTConverter'

const BANCOR_FORMULA = 'BancorFormula'

const CONTRACT_FEATURES = 'ContractFeatures'

const BANCOR_NETWORK = 'BancorNetwork'

const BANCOR_GAS_PRICE_LIMIT = 'BancorGasPriceLimit'

const BANCOR_X = 'BancorX'


address owner;
address newOwner;
mapping of struct addressOf;
array of uint256 contractNames;

function getAddress(bytes32 arg1) {
    return address(addressOf[arg1].field_0)
}

function contractNames(uint256 arg1) {
    return contractNames[arg1][0 len contractNames[arg1].length].field_0
}

function itemCount() {
    return contractNames.length
}

function owner() {
    return owner
}

function addressOf(bytes32 arg1) {
    return address(addressOf[arg1].field_0)
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require owner != arg1
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function registerAddress(bytes32 arg1, address arg2) {
    require msg.sender == owner
    require arg2
    address(addressOf[arg1].field_0) = arg2
    if not uint8(addressOf[arg1].field_512):
        uint8(addressOf[arg1].field_512) = 1
        mem[128 len 1024] = code.data[3012 len 1024]
        idx = 0
        while idx < 32:
            require idx < 32
            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)), 0) - 256
            idx = idx + 1
            continue 
        contractNames.length++
        contractNames[contractNames.length].field_0 = 65
        s = 0
        idx = 128
        while 160 > idx:
            contractNames[contractNames.length + s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 1
        while contractNames[contractNames.length].length + 31 / 32 > idx:
            contractNames[contractNames.length + idx].field_0 = 0
            idx = idx + 1
            continue 
        addressOf[arg1].field_256 = contractNames.length
    emit AddressUpdate(arg2, arg1);
}

function unregisterAddress(bytes32 arg1) {
    require msg.sender == owner
    address(addressOf[arg1].field_0) = 0
    if 1 < contractNames.length:
        require contractNames.length - 1 < contractNames.length
        mem[128] = stor[sha3(('name', 'contractNames', 3) + contractNames.length - 1)].field_0
        idx = 128
        s = 0
        while stor[('name', 'contractNames', 3) + contractNames.length - 1].length + 96 > idx:
            mem[idx + 32] = stor[s + sha3(('name', 'contractNames', 3) + contractNames.length - 1)].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require addressOf[arg1].field_256 < contractNames.length
        contractNames[stor2[arg1].field_256][].field_0 = Array(len=stor[('name', 'contractNames', 3) + contractNames.length - 1].length, data=mem[128 len stor[('name', 'contractNames', 3) + contractNames.length - 1].length])
        addressOf[mem[128]].field_256 = addressOf[arg1].field_256
    contractNames.length--
    if contractNames.length > contractNames.length - 1:
        mem[0] = 3
        idx = contractNames.length - 1
        while sha3(3) + contractNames.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    addressOf[arg1].field_256 = 0
    emit AddressUpdate(0, arg1);
}



}
