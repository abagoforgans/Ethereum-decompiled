contract main {




// =====================  Runtime code  =====================


#
#  - addPaid(bytes32 arg1, uint256 arg2)
#
const modelId = 'InstallmentsModel A 0.0.2'

const STATUS_PAID = 2

const STATUS_ONGOING = 1

const STATUS_ERROR = 4

const L_DATA = 60


address sub_b29b0468Address;
uint8 stor1; offset 160
address sub_b17a45aeAddress;
mapping of uint8 stor2;
address owner2;
uint256 stor3;
address engineAddress;
address stor6;
mapping of struct installments;
mapping of struct paid;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[Mask(32, 224, arg1)])
}

function inited() payable {
    return bool(stor1)
}

function owner2() payable {
    return address(owner2)
}

function getInstallments(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return installments[arg1].field_0
}

function getPaid(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return paid[arg1].field_256
}

function sub_b17a45ae(?) payable {
    return sub_b17a45aeAddress
}

function sub_b29b0468(?) payable {
    return sub_b29b0468Address
}

function engine() payable {
    return engineAddress
}

function configs(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return installments[arg1].field_0, 
           installments[arg1].field_0,
           installments[arg1].field_0,
           installments[arg1].field_0,
           installments[arg1].field_256,
           installments[arg1].field_512
}

function getFrequency(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return installments[arg1].field_56
}

function states(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return paid[arg1].field_0, 
           paid[arg1].field_0,
           paid[arg1].field_0,
           paid[arg1].field_256,
           paid[arg1].field_384,
           paid[arg1].field_512
}

function _fallback() payable {
    revert
}

function descriptor() payable {
    if not stor6:
        return this.address
    return stor6
}

function isOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    return (engineAddress == arg1)
}

function getFinalTime(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return (installments[arg1].field_96 + (installments[arg1].field_56 * installments[arg1].field_0))
}

function addDebt(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if engineAddress != msg.sender:
        revert with 0, 'Only engine allowed'
    revert with 0, 'Not implemented!'
}

function getStatus(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not installments[arg1].field_96:
        revert with 0, 'The registry does not exist'
    if 2 == paid[arg1].field_0:
        return 2
    return 1
}

function setDescriptor(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner2) != msg.sender:
        revert with 0, 'The owner should be the sender'
    stor6 = arg1
    emit _setDescriptor(arg1);
    return 1
}

function setEngine(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner2) != msg.sender:
        revert with 0, 'The owner should be the sender'
    engineAddress = arg1
    emit _setEngine(arg1);
    return 1
}

function transferOwnership2(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner2) != msg.sender:
        revert with 0, 'The owner should be the sender'
    if not arg1:
        revert with 0, '0x0 Is not a valid owner'
    emit OwnershipTransferred(address(owner2), arg1);
    address(owner2) = arg1
}

function encodeData(uint128 arg1, uint256 arg2, uint24 arg3, uint40 arg4, uint32 arg5) payable {
    require calldata.size - 4 >= 160
    return 32, 60, 
           arg1,
           arg2,
           arg3 % 16777216,
           arg4 % 1099511627776,
           arg5,
           0,
           Mask(224, -256, arg1, arg2, arg3 % 16777216, arg4 % 1099511627776, arg5, 0) << 256
}

function init() payable {
    if stor1:
        revert with 0, 'Already inited'
    stor2[0xaf498c3500000000000000000000000000000000000000000000000000000000] = 1
    stor2[0x273537500000000000000000000000000000000000000000000000000000000] = 1
    if stor1:
        revert with 0, 'Already inited'
    uint256(stor3) = msg.sender or Mask(96, 160, uint256(stor3))
    emit OwnershipTransferred(0, msg.sender);
    stor2[0x1ffc9a700000000000000000000000000000000000000000000000000000000] = 1
    if stor1:
        revert with 0, 'Already inited'
    stor1 = 1
    stor1 = 1
    stor1 = 1
    stor1 = 1
}

function getDueTime(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not installments[arg1].field_256:
        return 0
    if paid[arg1].field_72:
        if installments[arg1].field_56:
            return (paid[arg1].field_72 - (paid[arg1].field_72 % installments[arg1].field_56) + installments[arg1].field_96)
    else:
        if installments[arg1].field_56:
            return (installments[arg1].field_56 - (installments[arg1].field_56 % installments[arg1].field_56) + installments[arg1].field_96)
    ('iszero', ('field', 56, ('stor', ('map', ('param', 'arg1'), ('name', 'installments', 7)))))
    revert
}

function simFrequency(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length != 60:
        revert with 0, 'Invalid data length'
    if 56 > arg1.length:
        revert with 0, 'Reading bytes out of bounds'
    mem[ceil32(arg1.length) + 128] = mem[179 len 5]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function simInstallments(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length != 60:
        revert with 0, 'Invalid data length'
    if 56 > arg1.length:
        revert with 0, 'Reading bytes out of bounds'
    mem[ceil32(arg1.length) + 128] = mem[176 len 3]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function simPunitiveInterestRate(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length != 60:
        revert with 0, 'Invalid data length'
    if 56 > arg1.length:
        revert with 0, 'Reading bytes out of bounds'
    mem[ceil32(arg1.length) + 128] = mem[144]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function simDuration(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length != 60:
        revert with 0, 'Invalid data length'
    if 56 > arg1.length:
        revert with 0, 'Reading bytes out of bounds'
    mem[ceil32(arg1.length) + 128] = mem[176 len 3] * mem[179 len 5]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function simTotalObligation(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length != 60:
        revert with 0, 'Invalid data length'
    if 56 > arg1.length:
        revert with 0, 'Reading bytes out of bounds'
    mem[ceil32(arg1.length) + 128] = mem[128 len 16] * mem[176 len 3]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function simFirstObligation(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length != 60:
        revert with 0, 'Invalid data length'
    _8 = mem[179]
    if 56 > arg1.length:
        revert with 0, 'Reading bytes out of bounds'
    mem[ceil32(arg1.length) + 128] = mem[128 len 16]
    mem[ceil32(arg1.length) + 160] = Mask(40, 216, _8) >> 216
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), 
           mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length) + 32]
}

function validate(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length != 60:
        revert with 0, 'Invalid data length'
    if 56 > arg1.length:
        revert with 0, 'Reading bytes out of bounds'
    if mem[128 len 16] <= 0:
        revert with 0, 'Cuota can't be 0'
    if mem[144] <= 0:
        revert with 0, 'Interest rate can't be 0'
    if mem[176 len 3] <= 0:
        revert with 0, 'Installments can't be 0'
    if mem[179 len 5] <= 0:
        revert with 0, 'Installment duration can't be 0'
    if mem[184 len 4] > mem[179 len 5]:
        revert with 0, 
                    32,
                    50,
                    0xfe54696d6520756e69742063616e2774206265206c6f776572207468616e20696e7374616c6c6d656e74206475726174696f,
                    mem[ceil32(arg1.length) + 246 len 14]
    if mem[144] <= mem[184 len 4]:
        revert with 0, 
                    32,
                    37,
                    0x6e496e74657265737420726174652062792074696d6520756e697420697320746f6f206c6f,
                    mem[ceil32(arg1.length) + 233 len 27]
    if mem[184 len 4] <= 0:
        revert with 0, 'Time unit can'be 0'
    mem[ceil32(arg1.length) + 128] = 1
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function create(bytes32 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if engineAddress != msg.sender:
        revert with 0, 'Only engine allowed'
    if installments[arg1].field_256:
        revert with 0, 'Entry already exist'
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg2.length != 60:
        revert with 0, 'Invalid data length'
    if 56 > arg2.length:
        revert with 0, 'Reading bytes out of bounds'
    if mem[128 len 16] <= 0:
        revert with 0, 'Cuota can't be 0'
    if mem[144] <= 0:
        revert with 0, 'Interest rate can't be 0'
    if mem[176 len 3] <= 0:
        revert with 0, 'Installments can't be 0'
    if mem[179 len 5] <= 0:
        revert with 0, 'Installment duration can't be 0'
    if mem[184 len 4] > mem[179 len 5]:
        revert with 0, 
                    32,
                    50,
                    0xfe54696d6520756e69742063616e2774206265206c6f776572207468616e20696e7374616c6c6d656e74206475726174696f,
                    mem[ceil32(arg2.length) + 246 len 14]
    if mem[144] <= mem[184 len 4]:
        revert with 0, 
                    32,
                    37,
                    0x6e496e74657265737420726174652062792074696d6520756e697420697320746f6f206c6f,
                    mem[ceil32(arg2.length) + 233 len 27]
    if mem[184 len 4] <= 0:
        revert with 0, 'Time unit can'be 0'
    installments[arg1].field_0 = mem[176 len 3]
    installments[arg1].field_24 = mem[184 len 4]
    installments[arg1].field_56 = mem[179 len 5]
    installments[arg1].field_96 = uint64(block.timestamp)
    installments[arg1].field_256 = mem[128 len 16]
    installments[arg1].field_512 = mem[144]
    paid[arg1].field_8 = mem[179 len 5]
    paid[arg1].field_48 = 0
    emit Created(arg1);
    emit _setClock(arg1, mem[179 len 5]);
    return 1
}

function getClosingObligation(bytes32 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 7
    if paid[arg1].field_8 >= uint64(block.timestamp - installments[arg1].field_96):
        if paid[arg1].field_512 + (installments[arg1].field_0 * installments[arg1].field_256) > paid[arg1].field_256:
            return (paid[arg1].field_512 + (installments[arg1].field_0 * installments[arg1].field_256) - paid[arg1].field_256)
        else:
            return 0
    require installments[arg1].field_56
    require installments[arg1].field_56
    if installments[arg1].field_56 - (var34001 % installments[arg1].field_56) <= var34009:
        require installments[arg1].field_56
        require installments[arg1].field_24
        require installments[arg1].field_512 / installments[arg1].field_24
        if var65001 / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
            revert with 0, 'New interest overflow'
        # nil
    else:
        require installments[arg1].field_24
        require installments[arg1].field_512 / installments[arg1].field_24
        if var61001 / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
            revert with 0, 'New interest overflow'
        if not var65003:
            if var65001 <= 0:
                if var65006 + (installments[arg1].field_0 * installments[arg1].field_256) > paid[arg1].field_256:
                    return (var65006 + (installments[arg1].field_0 * installments[arg1].field_256) - paid[arg1].field_256)
                else:
                    return 0
        if var65004 + var65005 >= uint64(block.timestamp - installments[arg1].field_96):
            if var65001 + var65006 + (installments[arg1].field_0 * installments[arg1].field_256) > paid[arg1].field_256:
                return (var65001 + var65006 + (installments[arg1].field_0 * installments[arg1].field_256) - paid[arg1].field_256)
            else:
                return 0
        require installments[arg1].field_56
        if not var37001:
            if installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) > uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005:
                var39001 = installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56)
                var39006 = var65004 + var65005
                var39007 = uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005
                var39009 = var65003
                var39010 = var65004
                var39011 = var65004 + var65005
                var39012 = var65001 + var65006
                continue 
            require installments[arg1].field_56
            if var65004 + var65005 / installments[arg1].field_56 >= installments[arg1].field_0:
                var39001 = installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56)
                var39006 = var65004 + var65005
                var39007 = uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005
                var39009 = var65003
                var39010 = var65004
                var39011 = var65004 + var65005
                var39012 = var65001 + var65006
                continue 
            require installments[arg1].field_56
            require installments[arg1].field_24
            require installments[arg1].field_512 / installments[arg1].field_24
            if var65004 + var65005 / installments[arg1].field_56 < installments[arg1].field_0:
                if (100000 * uint128(var65004 + var65005 / installments[arg1].field_56 * installments[arg1].field_256) * installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
                    revert with 0, 'New interest overflow'
                var65001 = (100000 * uint128(var65004 + var65005 / installments[arg1].field_56 * installments[arg1].field_256) * installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24
                var65003 = 1
                var65004 = installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56)
                var65005 = var65004 + var65005
                var65006 = var65001 + var65006
                continue 
            if (100000 * uint128(installments[arg1].field_0 * installments[arg1].field_256) * installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
                revert with 0, 'New interest overflow'
            var65001 = (100000 * uint128(installments[arg1].field_0 * installments[arg1].field_256) * installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24
            var65003 = 1
            var65004 = installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56)
            var65005 = var65004 + var65005
            var65006 = var65001 + var65006
            continue 
        require installments[arg1].field_56
        if installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) <= uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005:
            if var65004 + var65005 / installments[arg1].field_56 < installments[arg1].field_0:
                var38001 = installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56)
                var38006 = var65004 + var65005
                var38007 = uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005
                var38009 = var65003
                var38010 = var65004
                var38011 = var65004 + var65005
                var38012 = var65001 + var65006
                continue 
        require installments[arg1].field_24
        require installments[arg1].field_512 / installments[arg1].field_24
        if var65004 + var65005 / installments[arg1].field_56 < installments[arg1].field_0:
            if (100000 * uint128(var65004 + var65005 / installments[arg1].field_56 * installments[arg1].field_256) * uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005 / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005 / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
                revert with 0, 'New interest overflow'
            var65001 = (100000 * uint128(var65004 + var65005 / installments[arg1].field_56 * installments[arg1].field_256) * uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005 / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005 / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24
            var65003 = 0
            var65004 = uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005
            var65005 = var65004 + var65005
            var65006 = var65001 + var65006
            continue 
        if (100000 * uint128(installments[arg1].field_0 * installments[arg1].field_256) * uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005 / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005 / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
            revert with 0, 'New interest overflow'
        var65001 = (100000 * uint128(installments[arg1].field_0 * installments[arg1].field_256) * uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005 / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005 / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24
        var65003 = 0
        var65004 = uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005
        var65005 = var65004 + var65005
        var65006 = var65001 + var65006
        continue 
}

function getEstimateObligation(bytes32 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 7
    if paid[arg1].field_8 >= uint64(block.timestamp - installments[arg1].field_96):
        if paid[arg1].field_512 + (installments[arg1].field_0 * installments[arg1].field_256) > paid[arg1].field_256:
            return (paid[arg1].field_512 + (installments[arg1].field_0 * installments[arg1].field_256) - paid[arg1].field_256)
        else:
            return 0
    require installments[arg1].field_56
    require installments[arg1].field_56
    if installments[arg1].field_56 - (var34001 % installments[arg1].field_56) <= var34009:
        require installments[arg1].field_56
        require installments[arg1].field_24
        require installments[arg1].field_512 / installments[arg1].field_24
        if var65001 / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
            revert with 0, 'New interest overflow'
        # nil
    else:
        require installments[arg1].field_24
        require installments[arg1].field_512 / installments[arg1].field_24
        if var61001 / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
            revert with 0, 'New interest overflow'
        if not var65003:
            if var65001 <= 0:
                if var65006 + (installments[arg1].field_0 * installments[arg1].field_256) > paid[arg1].field_256:
                    return (var65006 + (installments[arg1].field_0 * installments[arg1].field_256) - paid[arg1].field_256)
                else:
                    return 0
        if var65004 + var65005 >= uint64(block.timestamp - installments[arg1].field_96):
            if var65001 + var65006 + (installments[arg1].field_0 * installments[arg1].field_256) > paid[arg1].field_256:
                return (var65001 + var65006 + (installments[arg1].field_0 * installments[arg1].field_256) - paid[arg1].field_256)
            else:
                return 0
        require installments[arg1].field_56
        if not var37001:
            if installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) > uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005:
                var39001 = installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56)
                var39006 = var65004 + var65005
                var39007 = uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005
                var39009 = var65003
                var39010 = var65004
                var39011 = var65004 + var65005
                var39012 = var65001 + var65006
                continue 
            require installments[arg1].field_56
            if var65004 + var65005 / installments[arg1].field_56 >= installments[arg1].field_0:
                var39001 = installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56)
                var39006 = var65004 + var65005
                var39007 = uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005
                var39009 = var65003
                var39010 = var65004
                var39011 = var65004 + var65005
                var39012 = var65001 + var65006
                continue 
            require installments[arg1].field_56
            require installments[arg1].field_24
            require installments[arg1].field_512 / installments[arg1].field_24
            if var65004 + var65005 / installments[arg1].field_56 < installments[arg1].field_0:
                if (100000 * uint128(var65004 + var65005 / installments[arg1].field_56 * installments[arg1].field_256) * installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
                    revert with 0, 'New interest overflow'
                var65001 = (100000 * uint128(var65004 + var65005 / installments[arg1].field_56 * installments[arg1].field_256) * installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24
                var65003 = 1
                var65004 = installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56)
                var65005 = var65004 + var65005
                var65006 = var65001 + var65006
                continue 
            if (100000 * uint128(installments[arg1].field_0 * installments[arg1].field_256) * installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
                revert with 0, 'New interest overflow'
            var65001 = (100000 * uint128(installments[arg1].field_0 * installments[arg1].field_256) * installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24
            var65003 = 1
            var65004 = installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56)
            var65005 = var65004 + var65005
            var65006 = var65001 + var65006
            continue 
        require installments[arg1].field_56
        if installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) <= uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005:
            if var65004 + var65005 / installments[arg1].field_56 < installments[arg1].field_0:
                var38001 = installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56)
                var38006 = var65004 + var65005
                var38007 = uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005
                var38009 = var65003
                var38010 = var65004
                var38011 = var65004 + var65005
                var38012 = var65001 + var65006
                continue 
        require installments[arg1].field_24
        require installments[arg1].field_512 / installments[arg1].field_24
        if var65004 + var65005 / installments[arg1].field_56 < installments[arg1].field_0:
            if (100000 * uint128(var65004 + var65005 / installments[arg1].field_56 * installments[arg1].field_256) * uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005 / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005 / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
                revert with 0, 'New interest overflow'
            var65001 = (100000 * uint128(var65004 + var65005 / installments[arg1].field_56 * installments[arg1].field_256) * uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005 / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005 / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24
            var65003 = 0
            var65004 = uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005
            var65005 = var65004 + var65005
            var65006 = var65001 + var65006
            continue 
        if (100000 * uint128(installments[arg1].field_0 * installments[arg1].field_256) * uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005 / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005 / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
            revert with 0, 'New interest overflow'
        var65001 = (100000 * uint128(installments[arg1].field_0 * installments[arg1].field_256) * uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005 / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005 / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24
        var65003 = 0
        var65004 = uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005
        var65005 = var65004 + var65005
        var65006 = var65001 + var65006
        continue 
}

function run(bytes32 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 8
    if paid[arg1].field_8 >= uint64(block.timestamp - installments[arg1].field_96):
        return 0
    require installments[arg1].field_56
    require installments[arg1].field_56
    if installments[arg1].field_56 - (var34001 % installments[arg1].field_56) <= var34009:
        require installments[arg1].field_56
        require installments[arg1].field_24
        require installments[arg1].field_512 / installments[arg1].field_24
        if var65001 / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
            revert with 0, 'New interest overflow'
        # nil
    else:
        require installments[arg1].field_24
        require installments[arg1].field_512 / installments[arg1].field_24
        if var61001 / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
            revert with 0, 'New interest overflow'
        if not var65003:
            if var65001 <= 0:
                if var65005 >= 18446744073709551616:
                    revert with 0, 'Clock overflow'
                if var65006 >= 0x100000000000000000000000000000000:
                    revert with 0, 'Interest overflow'
                emit _setClock(arg1, uint64(var65005));
                if var65006:
                    emit _setInterest(arg1, uint128(var65006));
                paid[arg1].field_8 = uint64(var65005)
                paid[arg1].field_512 = uint128(var65006)
                return 1
        if var65004 + var65005 >= uint64(block.timestamp - installments[arg1].field_96):
            if var65004 + var65005 >= 18446744073709551616:
                revert with 0, 'Clock overflow'
            if var65001 + var65006 >= 0x100000000000000000000000000000000:
                revert with 0, 'Interest overflow'
            emit _setClock(arg1, uint64(var65004 + var65005));
            if var65001 + var65006:
                emit _setInterest(arg1, uint128(var65001 + var65006));
            paid[arg1].field_8 = uint64(var65004 + var65005)
            paid[arg1].field_512 = uint128(var65001 + var65006)
            return 1
        require installments[arg1].field_56
        if not var37001:
            if installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) > uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005:
                var39001 = installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56)
                var39006 = var65004 + var65005
                var39007 = uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005
                var39009 = var65003
                var39010 = var65004
                var39011 = var65004 + var65005
                var39012 = var65001 + var65006
                continue 
            require installments[arg1].field_56
            if var65004 + var65005 / installments[arg1].field_56 >= installments[arg1].field_0:
                var39001 = installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56)
                var39006 = var65004 + var65005
                var39007 = uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005
                var39009 = var65003
                var39010 = var65004
                var39011 = var65004 + var65005
                var39012 = var65001 + var65006
                continue 
            require installments[arg1].field_56
            require installments[arg1].field_24
            require installments[arg1].field_512 / installments[arg1].field_24
            if var65004 + var65005 / installments[arg1].field_56 < installments[arg1].field_0:
                if (100000 * uint128(var65004 + var65005 / installments[arg1].field_56 * installments[arg1].field_256) * installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
                    revert with 0, 'New interest overflow'
                var65001 = (100000 * uint128(var65004 + var65005 / installments[arg1].field_56 * installments[arg1].field_256) * installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24
                var65003 = 1
                var65004 = installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56)
                var65005 = var65004 + var65005
                var65006 = var65001 + var65006
                continue 
            if (100000 * uint128(installments[arg1].field_0 * installments[arg1].field_256) * installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
                revert with 0, 'New interest overflow'
            var65001 = (100000 * uint128(installments[arg1].field_0 * installments[arg1].field_256) * installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24
            var65003 = 1
            var65004 = installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56)
            var65005 = var65004 + var65005
            var65006 = var65001 + var65006
            continue 
        require installments[arg1].field_56
        if installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56) <= uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005:
            if var65004 + var65005 / installments[arg1].field_56 < installments[arg1].field_0:
                var38001 = installments[arg1].field_56 - (var65004 + var65005 % installments[arg1].field_56)
                var38006 = var65004 + var65005
                var38007 = uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005
                var38009 = var65003
                var38010 = var65004
                var38011 = var65004 + var65005
                var38012 = var65001 + var65006
                continue 
        require installments[arg1].field_24
        require installments[arg1].field_512 / installments[arg1].field_24
        if var65004 + var65005 / installments[arg1].field_56 < installments[arg1].field_0:
            if (100000 * uint128(var65004 + var65005 / installments[arg1].field_56 * installments[arg1].field_256) * uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005 / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005 / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
                revert with 0, 'New interest overflow'
            var65001 = (100000 * uint128(var65004 + var65005 / installments[arg1].field_56 * installments[arg1].field_256) * uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005 / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005 / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24
            var65003 = 0
            var65004 = uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005
            var65005 = var65004 + var65005
            var65006 = var65001 + var65006
            continue 
        if (100000 * uint128(installments[arg1].field_0 * installments[arg1].field_256) * uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005 / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005 / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
            revert with 0, 'New interest overflow'
        var65001 = (100000 * uint128(installments[arg1].field_0 * installments[arg1].field_256) * uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005 / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005 / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24
        var65003 = 0
        var65004 = uint64(block.timestamp - installments[arg1].field_96) - var65004 - var65005
        var65005 = var65004 + var65005
        var65006 = var65001 + var65006
        continue 
}

function fixClock(bytes32 arg1, uint64 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if arg2 > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x77466f7262696464656e20616476616e636520636c6f636b20696e746f20746865206675747572,
                    mem[203 len 25]
    if installments[arg1].field_96 >= arg2:
        revert with 0, 'Clock can't go negative'
    if uint64(arg2 - installments[arg1].field_96) <= paid[arg1].field_8:
        revert with 0, 'Clock is ahead of target'
    mem[0] = arg1
    mem[32] = 8
    if paid[arg1].field_8 >= uint64(arg2 - installments[arg1].field_96):
        return 0
    require installments[arg1].field_56
    require installments[arg1].field_56
    if installments[arg1].field_56 - (var37001 % installments[arg1].field_56) <= var37009:
        require installments[arg1].field_56
        require installments[arg1].field_24
        require installments[arg1].field_512 / installments[arg1].field_24
        if var68001 / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
            revert with 0, 'New interest overflow'
        # nil
    else:
        require installments[arg1].field_24
        require installments[arg1].field_512 / installments[arg1].field_24
        if var64001 / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
            revert with 0, 'New interest overflow'
        if not var68003:
            if var68001 <= 0:
                if var68005 >= 18446744073709551616:
                    revert with 0, 'Clock overflow'
                if var68006 >= 0x100000000000000000000000000000000:
                    revert with 0, 'Interest overflow'
                emit _setClock(arg1, uint64(var68005));
                if var68006:
                    emit _setInterest(arg1, uint128(var68006));
                paid[arg1].field_8 = uint64(var68005)
                paid[arg1].field_512 = uint128(var68006)
                return 1
        if var68004 + var68005 >= uint64(arg2 - installments[arg1].field_96):
            if var68004 + var68005 >= 18446744073709551616:
                revert with 0, 'Clock overflow'
            if var68001 + var68006 >= 0x100000000000000000000000000000000:
                revert with 0, 'Interest overflow'
            emit _setClock(arg1, uint64(var68004 + var68005));
            if var68001 + var68006:
                emit _setInterest(arg1, uint128(var68001 + var68006));
            paid[arg1].field_8 = uint64(var68004 + var68005)
            paid[arg1].field_512 = uint128(var68001 + var68006)
            return 1
        require installments[arg1].field_56
        if not var40001:
            if installments[arg1].field_56 - (var68004 + var68005 % installments[arg1].field_56) > uint64(arg2 - installments[arg1].field_96) - var68004 - var68005:
                var42001 = installments[arg1].field_56 - (var68004 + var68005 % installments[arg1].field_56)
                var42006 = var68004 + var68005
                var42007 = uint64(arg2 - installments[arg1].field_96) - var68004 - var68005
                var42009 = var68003
                var42010 = var68004
                var42011 = var68004 + var68005
                var42012 = var68001 + var68006
                continue 
            require installments[arg1].field_56
            if var68004 + var68005 / installments[arg1].field_56 >= installments[arg1].field_0:
                var42001 = installments[arg1].field_56 - (var68004 + var68005 % installments[arg1].field_56)
                var42006 = var68004 + var68005
                var42007 = uint64(arg2 - installments[arg1].field_96) - var68004 - var68005
                var42009 = var68003
                var42010 = var68004
                var42011 = var68004 + var68005
                var42012 = var68001 + var68006
                continue 
            require installments[arg1].field_56
            require installments[arg1].field_24
            require installments[arg1].field_512 / installments[arg1].field_24
            if var68004 + var68005 / installments[arg1].field_56 < installments[arg1].field_0:
                if (100000 * uint128(var68004 + var68005 / installments[arg1].field_56 * installments[arg1].field_256) * installments[arg1].field_56 - (var68004 + var68005 % installments[arg1].field_56) / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * installments[arg1].field_56 - (var68004 + var68005 % installments[arg1].field_56) / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
                    revert with 0, 'New interest overflow'
                var68001 = (100000 * uint128(var68004 + var68005 / installments[arg1].field_56 * installments[arg1].field_256) * installments[arg1].field_56 - (var68004 + var68005 % installments[arg1].field_56) / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * installments[arg1].field_56 - (var68004 + var68005 % installments[arg1].field_56) / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24
                var68003 = 1
                var68004 = installments[arg1].field_56 - (var68004 + var68005 % installments[arg1].field_56)
                var68005 = var68004 + var68005
                var68006 = var68001 + var68006
                continue 
            if (100000 * uint128(installments[arg1].field_0 * installments[arg1].field_256) * installments[arg1].field_56 - (var68004 + var68005 % installments[arg1].field_56) / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * installments[arg1].field_56 - (var68004 + var68005 % installments[arg1].field_56) / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
                revert with 0, 'New interest overflow'
            var68001 = (100000 * uint128(installments[arg1].field_0 * installments[arg1].field_256) * installments[arg1].field_56 - (var68004 + var68005 % installments[arg1].field_56) / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * installments[arg1].field_56 - (var68004 + var68005 % installments[arg1].field_56) / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24
            var68003 = 1
            var68004 = installments[arg1].field_56 - (var68004 + var68005 % installments[arg1].field_56)
            var68005 = var68004 + var68005
            var68006 = var68001 + var68006
            continue 
        require installments[arg1].field_56
        if installments[arg1].field_56 - (var68004 + var68005 % installments[arg1].field_56) <= uint64(arg2 - installments[arg1].field_96) - var68004 - var68005:
            if var68004 + var68005 / installments[arg1].field_56 < installments[arg1].field_0:
                var41001 = installments[arg1].field_56 - (var68004 + var68005 % installments[arg1].field_56)
                var41006 = var68004 + var68005
                var41007 = uint64(arg2 - installments[arg1].field_96) - var68004 - var68005
                var41009 = var68003
                var41010 = var68004
                var41011 = var68004 + var68005
                var41012 = var68001 + var68006
                continue 
        require installments[arg1].field_24
        require installments[arg1].field_512 / installments[arg1].field_24
        if var68004 + var68005 / installments[arg1].field_56 < installments[arg1].field_0:
            if (100000 * uint128(var68004 + var68005 / installments[arg1].field_56 * installments[arg1].field_256) * uint64(arg2 - installments[arg1].field_96) - var68004 - var68005 / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * uint64(arg2 - installments[arg1].field_96) - var68004 - var68005 / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
                revert with 0, 'New interest overflow'
            var68001 = (100000 * uint128(var68004 + var68005 / installments[arg1].field_56 * installments[arg1].field_256) * uint64(arg2 - installments[arg1].field_96) - var68004 - var68005 / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * uint64(arg2 - installments[arg1].field_96) - var68004 - var68005 / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24
            var68003 = 0
            var68004 = uint64(arg2 - installments[arg1].field_96) - var68004 - var68005
            var68005 = var68004 + var68005
            var68006 = var68001 + var68006
            continue 
        if (100000 * uint128(installments[arg1].field_0 * installments[arg1].field_256) * uint64(arg2 - installments[arg1].field_96) - var68004 - var68005 / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * uint64(arg2 - installments[arg1].field_96) - var68004 - var68005 / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
            revert with 0, 'New interest overflow'
        var68001 = (100000 * uint128(installments[arg1].field_0 * installments[arg1].field_256) * uint64(arg2 - installments[arg1].field_96) - var68004 - var68005 / installments[arg1].field_24) - (100000 * paid[arg1].field_384 * uint64(arg2 - installments[arg1].field_96) - var68004 - var68005 / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24
        var68003 = 0
        var68004 = uint64(arg2 - installments[arg1].field_96) - var68004 - var68005
        var68005 = var68004 + var68005
        var68006 = var68001 + var68006
        continue 
}

function getObligation(bytes32 arg1, uint64 arg2) payable {
    require calldata.size - 4 >= 64
    mem[0] = arg1
    mem[32] = 7
    if arg2 < installments[arg1].field_96:
        return 0, 1
    require installments[arg1].field_56
    if uint64(arg2 - installments[arg1].field_96) / installments[arg1].field_56 < installments[arg1].field_0:
        if paid[arg1].field_8 >= uint64(arg2 - installments[arg1].field_96):
            if paid[arg1].field_512 + uint128(uint64(arg2 - installments[arg1].field_96) / installments[arg1].field_56 * installments[arg1].field_256) > paid[arg1].field_256:
                return paid[arg1].field_512 + uint128(uint64(arg2 - installments[arg1].field_96) / installments[arg1].field_56 * installments[arg1].field_256) - paid[arg1].field_256, 
                       1
            return 0, 1
        mem[96] = installments[arg1].field_0
        mem[128] = installments[arg1].field_24
        mem[160] = installments[arg1].field_56
        mem[192] = installments[arg1].field_96
        mem[224] = installments[arg1].field_256
        mem[256] = installments[arg1].field_512
        mem[64] = 480
        mem[288] = paid[arg1].field_0
        mem[320] = paid[arg1].field_8
        mem[352] = paid[arg1].field_72
        mem[384] = paid[arg1].field_256
        mem[416] = paid[arg1].field_384
        mem[448] = paid[arg1].field_512
        require installments[arg1].field_56
        require installments[arg1].field_56
        if installments[arg1].field_56 - (var40001 % installments[arg1].field_56) <= var40009:
            require installments[arg1].field_56
            require installments[arg1].field_24
            require installments[arg1].field_512 / installments[arg1].field_24
            if var71001 / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
                revert with 0, 'New interest overflow'
            # nil
        else:
            require installments[arg1].field_24
            require installments[arg1].field_512 / installments[arg1].field_24
            if var67001 / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
                revert with 0, 'New interest overflow'
            if not var71003:
                if var71001 <= 0:
                    if var71006 + uint128(uint64(arg2 - installments[arg1].field_96) / installments[arg1].field_56 * installments[arg1].field_256) > paid[arg1].field_256:
                        return var71006 + uint128(uint64(arg2 - installments[arg1].field_96) / installments[arg1].field_56 * installments[arg1].field_256) - paid[arg1].field_256, 
                               var71006 == paid[arg1].field_512
                    return 0, var71006 == paid[arg1].field_512
            if var71004 + var71005 >= uint64(arg2 - installments[arg1].field_96):
                if var71001 + var71006 + uint128(uint64(arg2 - installments[arg1].field_96) / installments[arg1].field_56 * installments[arg1].field_256) > paid[arg1].field_256:
                    return var71001 + var71006 + uint128(uint64(arg2 - installments[arg1].field_96) / installments[arg1].field_56 * installments[arg1].field_256) - paid[arg1].field_256, 
                           var71001 + var71006 == paid[arg1].field_512
                return 0, var71001 + var71006 == paid[arg1].field_512
            require installments[arg1].field_56
            if not var43001:
                if installments[arg1].field_56 - (var71004 + var71005 % installments[arg1].field_56) > uint64(arg2 - installments[arg1].field_96) - var71004 - var71005:
                    var45001 = installments[arg1].field_56 - (var71004 + var71005 % installments[arg1].field_56)
                    var45006 = var71004 + var71005
                    var45007 = uint64(arg2 - installments[arg1].field_96) - var71004 - var71005
                    var45009 = var71003
                    var45010 = var71004
                    var45011 = var71004 + var71005
                    var45012 = var71001 + var71006
                    continue 
                require installments[arg1].field_56
                if var71004 + var71005 / installments[arg1].field_0 >= installments[arg1].field_0:
                    var45001 = installments[arg1].field_56 - (var71004 + var71005 % installments[arg1].field_56)
                    var45006 = var71004 + var71005
                    var45007 = uint64(arg2 - installments[arg1].field_96) - var71004 - var71005
                    var45009 = var71003
                    var45010 = var71004
                    var45011 = var71004 + var71005
                    var45012 = var71001 + var71006
                    continue 
                require installments[arg1].field_56
                require installments[arg1].field_24
                require installments[arg1].field_512 / installments[arg1].field_24
                if var71004 + var71005 / installments[arg1].field_0 < installments[arg1].field_0:
                    if (100000 * uint128(var71004 + var71005 / installments[arg1].field_0 * installments[arg1].field_256) * installments[arg1].field_0 - (var71004 + var71005 % installments[arg1].field_0) / installments[arg1].field_24) - (100000 * paid[arg1].field_256 * installments[arg1].field_0 - (var71004 + var71005 % installments[arg1].field_0) / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
                        revert with 0, 'New interest overflow'
                    var71001 = (100000 * uint128(var71004 + var71005 / installments[arg1].field_0 * installments[arg1].field_256) * installments[arg1].field_0 - (var71004 + var71005 % installments[arg1].field_0) / installments[arg1].field_24) - (100000 * paid[arg1].field_256 * installments[arg1].field_0 - (var71004 + var71005 % installments[arg1].field_0) / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24
                    var71003 = 1
                    var71004 = installments[arg1].field_0 - (var71004 + var71005 % installments[arg1].field_0)
                    var71005 = var71004 + var71005
                    var71006 = var71001 + var71006
                    continue 
                if (100000 * uint128(installments[arg1].field_0 * installments[arg1].field_256) * installments[arg1].field_0 - (var71004 + var71005 % installments[arg1].field_0) / installments[arg1].field_0) - (100000 * paid[arg1].field_256 * installments[arg1].field_0 - (var71004 + var71005 % installments[arg1].field_0) / installments[arg1].field_0) / installments[arg1].field_512 / installments[arg1].field_0 >= 0x100000000000000000000000000000000:
                    revert with 0, 'New interest overflow'
                var71001 = (100000 * uint128(installments[arg1].field_0 * installments[arg1].field_256) * installments[arg1].field_0 - (var71004 + var71005 % installments[arg1].field_0) / installments[arg1].field_0) - (100000 * paid[arg1].field_256 * installments[arg1].field_0 - (var71004 + var71005 % installments[arg1].field_0) / installments[arg1].field_0) / installments[arg1].field_512 / installments[arg1].field_0
                var71003 = 1
                var71004 = installments[arg1].field_0 - (var71004 + var71005 % installments[arg1].field_0)
                var71005 = var71004 + var71005
                var71006 = var71001 + var71006
                continue 
            require installments[arg1].field_56
            if installments[arg1].field_56 - (var71004 + var71005 % installments[arg1].field_56) <= uint64(arg2 - installments[arg1].field_96) - var71004 - var71005:
                if var71004 + var71005 / installments[arg1].field_0 < installments[arg1].field_0:
                    var44001 = installments[arg1].field_56 - (var71004 + var71005 % installments[arg1].field_56)
                    var44006 = var71004 + var71005
                    var44007 = uint64(arg2 - installments[arg1].field_96) - var71004 - var71005
                    var44009 = var71003
                    var44010 = var71004
                    var44011 = var71004 + var71005
                    var44012 = var71001 + var71006
                    continue 
            require installments[arg1].field_24
            require installments[arg1].field_512 / installments[arg1].field_24
            if var71004 + var71005 / installments[arg1].field_0 < installments[arg1].field_0:
                if (100000 * uint128(var71004 + var71005 / installments[arg1].field_0 * installments[arg1].field_256) * uint64(arg2 - installments[arg1].field_96) - var71004 - var71005 / installments[arg1].field_24) - (100000 * paid[arg1].field_256 * uint64(arg2 - installments[arg1].field_96) - var71004 - var71005 / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
                    revert with 0, 'New interest overflow'
                var71001 = (100000 * uint128(var71004 + var71005 / installments[arg1].field_0 * installments[arg1].field_256) * uint64(arg2 - installments[arg1].field_96) - var71004 - var71005 / installments[arg1].field_24) - (100000 * paid[arg1].field_256 * uint64(arg2 - installments[arg1].field_96) - var71004 - var71005 / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24
                var71003 = 0
                var71004 = uint64(arg2 - installments[arg1].field_96) - var71004 - var71005
                var71005 = var71004 + var71005
                var71006 = var71001 + var71006
                continue 
            if (100000 * uint128(installments[arg1].field_0 * installments[arg1].field_256) * uint64(arg2 - installments[arg1].field_96) - var71004 - var71005 / installments[arg1].field_0) - (100000 * paid[arg1].field_256 * uint64(arg2 - installments[arg1].field_96) - var71004 - var71005 / installments[arg1].field_0) / installments[arg1].field_512 / installments[arg1].field_0 >= 0x100000000000000000000000000000000:
                revert with 0, 'New interest overflow'
            var71001 = (100000 * uint128(installments[arg1].field_0 * installments[arg1].field_256) * uint64(arg2 - installments[arg1].field_96) - var71004 - var71005 / installments[arg1].field_0) - (100000 * paid[arg1].field_256 * uint64(arg2 - installments[arg1].field_96) - var71004 - var71005 / installments[arg1].field_0) / installments[arg1].field_512 / installments[arg1].field_0
            var71003 = 0
            var71004 = uint64(arg2 - installments[arg1].field_96) - var71004 - var71005
            var71005 = var71004 + var71005
            var71006 = var71001 + var71006
            continue 
    else:
        if paid[arg1].field_8 >= uint64(arg2 - installments[arg1].field_96):
            if paid[arg1].field_512 + uint128(installments[arg1].field_0 * installments[arg1].field_256) > paid[arg1].field_256:
                return paid[arg1].field_512 + uint128(installments[arg1].field_0 * installments[arg1].field_256) - paid[arg1].field_256, 1
            return 0, 1
        mem[96] = installments[arg1].field_0
        mem[128] = installments[arg1].field_24
        mem[160] = installments[arg1].field_56
        mem[192] = installments[arg1].field_96
        mem[224] = installments[arg1].field_256
        mem[256] = installments[arg1].field_512
        mem[64] = 480
        mem[288] = paid[arg1].field_0
        mem[320] = paid[arg1].field_8
        mem[352] = paid[arg1].field_72
        mem[384] = paid[arg1].field_256
        mem[416] = paid[arg1].field_384
        mem[448] = paid[arg1].field_512
        require installments[arg1].field_56
        require installments[arg1].field_56
        if installments[arg1].field_56 - (var40001 % installments[arg1].field_56) <= var40009:
            require installments[arg1].field_56
            require installments[arg1].field_24
            require installments[arg1].field_512 / installments[arg1].field_24
            if var71001 / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
                revert with 0, 'New interest overflow'
            # nil
        else:
            require installments[arg1].field_24
            require installments[arg1].field_512 / installments[arg1].field_24
            if var67001 / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
                revert with 0, 'New interest overflow'
            if not var71003:
                if var71001 <= 0:
                    if var71006 + uint128(installments[arg1].field_0 * installments[arg1].field_256) > paid[arg1].field_256:
                        return var71006 + uint128(installments[arg1].field_0 * installments[arg1].field_256) - paid[arg1].field_256, 
                               var71006 == paid[arg1].field_512
                    return 0, var71006 == paid[arg1].field_512
            if var71004 + var71005 >= uint64(arg2 - installments[arg1].field_96):
                if var71001 + var71006 + uint128(installments[arg1].field_0 * installments[arg1].field_256) > paid[arg1].field_256:
                    return var71001 + var71006 + uint128(installments[arg1].field_0 * installments[arg1].field_256) - paid[arg1].field_256, 
                           var71001 + var71006 == paid[arg1].field_512
                return 0, var71001 + var71006 == paid[arg1].field_512
            require installments[arg1].field_56
            if not var43001:
                if installments[arg1].field_56 - (var71004 + var71005 % installments[arg1].field_56) > uint64(arg2 - installments[arg1].field_96) - var71004 - var71005:
                    var45001 = installments[arg1].field_56 - (var71004 + var71005 % installments[arg1].field_56)
                    var45006 = var71004 + var71005
                    var45007 = uint64(arg2 - installments[arg1].field_96) - var71004 - var71005
                    var45009 = var71003
                    var45010 = var71004
                    var45011 = var71004 + var71005
                    var45012 = var71001 + var71006
                    continue 
                require installments[arg1].field_56
                if var71004 + var71005 / installments[arg1].field_0 >= installments[arg1].field_0:
                    var45001 = installments[arg1].field_56 - (var71004 + var71005 % installments[arg1].field_56)
                    var45006 = var71004 + var71005
                    var45007 = uint64(arg2 - installments[arg1].field_96) - var71004 - var71005
                    var45009 = var71003
                    var45010 = var71004
                    var45011 = var71004 + var71005
                    var45012 = var71001 + var71006
                    continue 
                require installments[arg1].field_56
                require installments[arg1].field_24
                require installments[arg1].field_512 / installments[arg1].field_24
                if var71004 + var71005 / installments[arg1].field_0 < installments[arg1].field_0:
                    if (100000 * uint128(var71004 + var71005 / installments[arg1].field_0 * installments[arg1].field_256) * installments[arg1].field_0 - (var71004 + var71005 % installments[arg1].field_0) / installments[arg1].field_24) - (100000 * paid[arg1].field_256 * installments[arg1].field_0 - (var71004 + var71005 % installments[arg1].field_0) / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
                        revert with 0, 'New interest overflow'
                    var71001 = (100000 * uint128(var71004 + var71005 / installments[arg1].field_0 * installments[arg1].field_256) * installments[arg1].field_0 - (var71004 + var71005 % installments[arg1].field_0) / installments[arg1].field_24) - (100000 * paid[arg1].field_256 * installments[arg1].field_0 - (var71004 + var71005 % installments[arg1].field_0) / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24
                    var71003 = 1
                    var71004 = installments[arg1].field_0 - (var71004 + var71005 % installments[arg1].field_0)
                    var71005 = var71004 + var71005
                    var71006 = var71001 + var71006
                    continue 
                if (100000 * uint128(installments[arg1].field_0 * installments[arg1].field_256) * installments[arg1].field_0 - (var71004 + var71005 % installments[arg1].field_0) / installments[arg1].field_0) - (100000 * paid[arg1].field_256 * installments[arg1].field_0 - (var71004 + var71005 % installments[arg1].field_0) / installments[arg1].field_0) / installments[arg1].field_512 / installments[arg1].field_0 >= 0x100000000000000000000000000000000:
                    revert with 0, 'New interest overflow'
                var71001 = (100000 * uint128(installments[arg1].field_0 * installments[arg1].field_256) * installments[arg1].field_0 - (var71004 + var71005 % installments[arg1].field_0) / installments[arg1].field_0) - (100000 * paid[arg1].field_256 * installments[arg1].field_0 - (var71004 + var71005 % installments[arg1].field_0) / installments[arg1].field_0) / installments[arg1].field_512 / installments[arg1].field_0
                var71003 = 1
                var71004 = installments[arg1].field_0 - (var71004 + var71005 % installments[arg1].field_0)
                var71005 = var71004 + var71005
                var71006 = var71001 + var71006
                continue 
            require installments[arg1].field_56
            if installments[arg1].field_56 - (var71004 + var71005 % installments[arg1].field_56) <= uint64(arg2 - installments[arg1].field_96) - var71004 - var71005:
                if var71004 + var71005 / installments[arg1].field_0 < installments[arg1].field_0:
                    var44001 = installments[arg1].field_56 - (var71004 + var71005 % installments[arg1].field_56)
                    var44006 = var71004 + var71005
                    var44007 = uint64(arg2 - installments[arg1].field_96) - var71004 - var71005
                    var44009 = var71003
                    var44010 = var71004
                    var44011 = var71004 + var71005
                    var44012 = var71001 + var71006
                    continue 
            require installments[arg1].field_24
            require installments[arg1].field_512 / installments[arg1].field_24
            if var71004 + var71005 / installments[arg1].field_0 < installments[arg1].field_0:
                if (100000 * uint128(var71004 + var71005 / installments[arg1].field_0 * installments[arg1].field_256) * uint64(arg2 - installments[arg1].field_96) - var71004 - var71005 / installments[arg1].field_24) - (100000 * paid[arg1].field_256 * uint64(arg2 - installments[arg1].field_96) - var71004 - var71005 / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24 >= 0x100000000000000000000000000000000:
                    revert with 0, 'New interest overflow'
                var71001 = (100000 * uint128(var71004 + var71005 / installments[arg1].field_0 * installments[arg1].field_256) * uint64(arg2 - installments[arg1].field_96) - var71004 - var71005 / installments[arg1].field_24) - (100000 * paid[arg1].field_256 * uint64(arg2 - installments[arg1].field_96) - var71004 - var71005 / installments[arg1].field_24) / installments[arg1].field_512 / installments[arg1].field_24
                var71003 = 0
                var71004 = uint64(arg2 - installments[arg1].field_96) - var71004 - var71005
                var71005 = var71004 + var71005
                var71006 = var71001 + var71006
                continue 
            if (100000 * uint128(installments[arg1].field_0 * installments[arg1].field_256) * uint64(arg2 - installments[arg1].field_96) - var71004 - var71005 / installments[arg1].field_0) - (100000 * paid[arg1].field_256 * uint64(arg2 - installments[arg1].field_96) - var71004 - var71005 / installments[arg1].field_0) / installments[arg1].field_512 / installments[arg1].field_0 >= 0x100000000000000000000000000000000:
                revert with 0, 'New interest overflow'
            var71001 = (100000 * uint128(installments[arg1].field_0 * installments[arg1].field_256) * uint64(arg2 - installments[arg1].field_96) - var71004 - var71005 / installments[arg1].field_0) - (100000 * paid[arg1].field_256 * uint64(arg2 - installments[arg1].field_96) - var71004 - var71005 / installments[arg1].field_0) / installments[arg1].field_512 / installments[arg1].field_0
            var71003 = 0
            var71004 = uint64(arg2 - installments[arg1].field_96) - var71004 - var71005
            var71005 = var71004 + var71005
            var71006 = var71001 + var71006
            continue 
}



}
