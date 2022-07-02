contract main {




// =====================  Runtime code  =====================


const getLowerSTVersionBounds = Array(len=3, data=mem[288 len 96])

const getTags = Array(len=2, data=mem[256 len 64])

const getTypes = Array(len=1, data=mem[224])

const getInstructions = Array(len=120, data='Allows an issuer to set manual a', 'pprovals for specific pairs of a', 'ddresses and amounts. Init funct', 'ion takes no parameters.' >> 512, Mask(192, -768, 'Allows an issuer to set manual a', 'pprovals for specific pairs of a', 'ddresses and amounts. Init funct', 'ion takes no parameters.') << 768)

const getUpperSTVersionBounds = Array(len=3, data=mem[288 len 96])


address owner;
address polyTokenAddress;
uint256 usageCost;
uint256 monthlySubscriptionCost;
uint256 setupCost;
array of uint256 description;
array of uint256 version;
uint256 name;
array of uint256 title;
mapping of struct stor9;

function monthlySubscriptionCost() {
    return monthlySubscriptionCost
}

function name() {
    return name
}

function getName() {
    return name
}

function title() {
    return title[0 len title.length]
}

function version() {
    return version[0 len version.length]
}

function polyToken() {
    return polyTokenAddress
}

function description() {
    return description[0 len description.length]
}

function setupCost() {
    return setupCost
}

function owner() {
    return owner
}

function getSetupCost() {
    return setupCost
}

function usageCost() {
    return usageCost
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function changeName(bytes32 arg1) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid name'
    name = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function changeFactorySetupFee(uint256 arg1) {
    require msg.sender == owner
    emit ChangeFactorySetupFee(setupCost, arg1, this.address);
    setupCost = arg1
}

function changeFactoryUsageFee(uint256 arg1) {
    require msg.sender == owner
    emit ChangeFactoryUsageFee(usageCost, arg1, this.address);
    usageCost = arg1
}

function sub_2dbe07c7(?) {
    require msg.sender == owner
    if 0 >= arg1.length:
        revert with 0, 'Invalid title'
    title[] = Array(len=arg1.length, data=arg1[all])
}

function sub_64bb432c(?) {
    require msg.sender == owner
    if 0 >= arg1.length:
        revert with 0, 'Invalid version'
    version[] = Array(len=arg1.length, data=arg1[all])
}

function changeDescription(string arg1) {
    require msg.sender == owner
    if 0 >= arg1.length:
        revert with 0, 'Invalid description'
    description[] = Array(len=arg1.length, data=arg1[all])
}

function changeFactorySubscriptionFee(uint256 arg1) {
    require msg.sender == owner
    emit ChangeFactorySubscriptionFee(monthlySubscriptionCost, arg1, this.address);
    monthlySubscriptionCost = arg1
}

function deploy(bytes arg1) {
    if setupCost > 0:
        require ext_code.size(polyTokenAddress)
        call polyTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, owner, setupCost
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Failed transferFrom because of sufficent Allowance is not provided'
    create contract with 0 wei
                    code: code.data[6189 len 12067], address(msg.sender), polyTokenAddress
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit GenerateModuleFromFactory(address(create.new_address), msg.sender, setupCost, block.timestamp, name, this.address);
    return address(create.new_address)
}

function changeSTVersionBounds(string arg1, uint8[] arg2) {
    require msg.sender == owner
    mem[170 len arg1.length] = arg1[all]
    mem[arg1.length + 170 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + 202 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 202 len arg1.length % 32]
    if sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + floor32(arg1.length) + 170 len arg1.length % 32]) == sha3(Mask(80, 0, 'lowerBound', 0)):
        require arg2.length == 3
        if stor9[arg1[all]].field_0 % 16777216:
            mem[arg1.length + 170 len arg1.length] = arg1[all]
            mem[(2 * arg1.length) + 170] = 9
            mem[arg1.length + 202] = uint8(stor9[arg1[all]].field_16)
            mem[arg1.length + 234] = uint8(stor9[arg1[all]].field_8)
            mem[arg1.length + 266] = uint8(stor9[arg1[all]].field_0)
            mem[arg1.length + 298] = arg2.length
            mem[arg1.length + 330 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
            mem[arg1.length + (32 * arg2.length) + 330] = 3
            mem[arg1.length + (32 * arg2.length) + 362 len 96] = code.data[6189 len 96]
            idx = 0
            while uint8(idx) < 3:
                require uint8(idx) < arg2.length
                require uint8(idx) < 3
                require uint8(idx) < 3
                if mem[(32 * uint8(idx)) + arg1.length + 233 len 1] >= mem[(32 * uint8(idx)) + arg1.length + 361 len 1]:
                    mem[arg1.length + (32 * arg2.length) + (32 * uint8(idx)) + 362] = 0
                else:
                    mem[arg1.length + (32 * arg2.length) + (32 * uint8(idx)) + 362] = 1
                idx = idx + 1
                continue 
            idx = 0
            s = 0
            while uint8(idx) < 3:
                if uint8(idx):
                    require uint8(idx - 1) < 3
                    if not mem[(32 * uint8(idx - 1)) + arg1.length + (32 * arg2.length) + 362]:
                        require uint8(idx) < arg2.length
                        require uint8(idx) < 3
                        if mem[arg1.length + (32 * uint8(idx)) + 233 len 1] > mem[(32 * uint8(idx)) + arg1.length + 361 len 1]:
                            revert with 0, 'Failed because of in-valid version'
                    idx = idx + 1
                    s = s + 1
                    continue 
                require uint8(idx) < arg2.length
                require uint8(idx) < 3
                if mem[arg1.length + (32 * uint8(idx)) + 233 len 1] > mem[(32 * uint8(idx)) + arg1.length + 361 len 1]:
                    revert with 0, 'Failed because of in-valid version'
                if not mem[arg1.length + (32 * arg2.length) + 362]:
                    idx = idx + 1
                    s = s + 1
                    continue 
                if uint8(s + 3) != 3:
                    revert with 0, 'Failed because of in-valid version'
                require 0 < arg2.length
                require 1 < arg2.length
                require 2 < arg2.length
                uint8(stor9[arg1[all]].field_0) = uint8(cd[(arg2 + 100)])
                uint8(stor9[arg1[all]].field_8) = uint8(cd[(arg2 + 68)])
                uint8(stor9[arg1[all]].field_16) = uint8(cd[(arg2 + 36)])
                require 0 < arg2.length
                require 1 < arg2.length
                require 2 < arg2.length
                emit ChangeSTVersionBound(Array(len=arg1.length, data=arg1[all]), cd[(arg2 + 36)] << 248, cd[(arg2 + 68)] << 248, cd[(arg2 + 100)] << 248);
            if uint8(s) != 3:
                revert with 0, 'Failed because of in-valid version'
        require 0 < arg2.length
        require 1 < arg2.length
        require 2 < arg2.length
        uint8(stor9[arg1[all]].field_0) = uint8(cd[(arg2 + 100)])
        uint8(stor9[arg1[all]].field_8) = uint8(cd[(arg2 + 68)])
        uint8(stor9[arg1[all]].field_16) = uint8(cd[(arg2 + 36)])
        require 0 < arg2.length
        require 1 < arg2.length
        require 2 < arg2.length
        emit ChangeSTVersionBound(Array(len=arg1.length, data=arg1[all]), cd[(arg2 + 36)] << 248, cd[(arg2 + 68)] << 248, cd[(arg2 + 100)] << 248);
    else:
        mem[arg1.length + 202] = 'upperBound'
        mem[arg1.length + 170] = 10
        mem[arg1.length + 212 len 0] = None
        mem[arg1.length + 244 len arg1.length] = arg1[all]
        mem[arg1.length + 212] = arg1.length
        mem[(2 * arg1.length) + 244 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(2 * arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 276 len arg1.length % 32] = mem[(2 * floor32(arg1.length)) + 276 len arg1.length % 32]
        if sha3(mem[(2 * arg1.length) + 244 len 6 * arg1.length]) != sha3(Mask(80, 0, 'upperBound', 0)):
            revert with 0, 'Must be a valid bound type'
        require arg2.length == 3
        mem[(2 * arg1.length) + 244 len arg1.length] = arg1[all]
        mem[(4 * arg1.length) + 244] = 9
        if not stor[sha3(mem[(2 * arg1.length) + 244 len (4 * arg1.length) + 32])].field_0 % 16777216:
            require 0 < arg2.length
            require 1 < arg2.length
            require 2 < arg2.length
            mem[(2 * arg1.length) + 244 len arg1.length] = arg1[all]
            mem[(4 * arg1.length) + 244] = 9
            uint8(stor[sha3(mem[(2 * arg1.length) + 244 len (4 * arg1.length) + 32])].field_0) = uint8(cd[(arg2 + 100)])
            uint8(stor[sha3(mem[(2 * arg1.length) + 244 len (4 * arg1.length) + 32])].field_8) = uint8(cd[(arg2 + 68)])
            uint8(stor[sha3(mem[(2 * arg1.length) + 244 len (4 * arg1.length) + 32])].field_16) = uint8(cd[(arg2 + 36)])
            require 0 < arg2.length
            require 1 < arg2.length
            require 2 < arg2.length
            mem[(2 * arg1.length) + 276] = uint8(cd[(arg2 + 36)])
            mem[(2 * arg1.length) + 308] = uint8(cd[(arg2 + 68)])
            mem[(2 * arg1.length) + 340] = uint8(cd[(arg2 + 100)])
            mem[(2 * arg1.length) + 244] = 128
            mem[(2 * arg1.length) + 372] = arg1.length
            mem[(2 * arg1.length) + 404 len arg1.length] = arg1[all]
            emit ChangeSTVersionBound(string arg1, uint8 arg2, uint8 arg3, uint8 arg4):
                                      mem[(2 * arg1.length) + 244 len (4 * arg1.length) + 160],
        else:
            mem[(2 * arg1.length) + 244 len arg1.length] = arg1[all]
            mem[(4 * arg1.length) + 244] = 9
            _786 = sha3(mem[(2 * arg1.length) + 244 len (4 * arg1.length) + 32])
            mem[(2 * arg1.length) + 276] = uint8(stor[sha3(mem[(2 * arg1.length) + 244 len (4 * arg1.length) + 32])].field_16)
            mem[(2 * arg1.length) + 308] = uint8(stor[_786].field_8)
            mem[(2 * arg1.length) + 340] = uint8(stor[_786].field_0)
            mem[(2 * arg1.length) + 372] = arg2.length
            mem[(2 * arg1.length) + 404 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
            mem[(2 * arg1.length) + (32 * arg2.length) + 404] = 3
            mem[(2 * arg1.length) + (32 * arg2.length) + 436 len 96] = code.data[6189 len 96]
            idx = 0
            while uint8(idx) < 3:
                require uint8(idx) < arg2.length
                require uint8(idx) < 3
                require uint8(idx) < 3
                if mem[(32 * uint8(idx)) + (2 * arg1.length) + 307 len 1] >= mem[(32 * uint8(idx)) + (2 * arg1.length) + 435 len 1]:
                    mem[(2 * arg1.length) + (32 * arg2.length) + (32 * uint8(idx)) + 436] = 0
                else:
                    mem[(2 * arg1.length) + (32 * arg2.length) + (32 * uint8(idx)) + 436] = 1
                idx = idx + 1
                continue 
            idx = 0
            s = 0
            while uint8(idx) < 3:
                if uint8(idx):
                    require uint8(idx - 1) < 3
                    if not mem[(32 * uint8(idx - 1)) + (2 * arg1.length) + (32 * arg2.length) + 436]:
                        require uint8(idx) < arg2.length
                        require uint8(idx) < 3
                        if mem[(2 * arg1.length) + (32 * uint8(idx)) + 307 len 1] > mem[(32 * uint8(idx)) + (2 * arg1.length) + 435 len 1]:
                            revert with 0, 'Failed because of in-valid version'
                    idx = idx + 1
                    s = s + 1
                    continue 
                require uint8(idx) < arg2.length
                require uint8(idx) < 3
                if mem[(2 * arg1.length) + (32 * uint8(idx)) + 307 len 1] > mem[(32 * uint8(idx)) + (2 * arg1.length) + 435 len 1]:
                    revert with 0, 'Failed because of in-valid version'
                if not mem[(2 * arg1.length) + (32 * arg2.length) + 436]:
                    idx = idx + 1
                    s = s + 1
                    continue 
                if uint8(s + 3) != 3:
                    revert with 0, 'Failed because of in-valid version'
                require 0 < arg2.length
                require 1 < arg2.length
                require 2 < arg2.length
                mem[(2 * arg1.length) + (32 * arg2.length) + 532 len arg1.length] = arg1[all]
                mem[(4 * arg1.length) + (32 * arg2.length) + 532] = 9
                uint8(stor[sha3(mem[(2 * arg1.length) + (32 * arg2.length) + 532 len (4 * arg1.length) + 32])].field_0) = uint8(cd[(arg2 + 100)])
                uint8(stor[sha3(mem[(2 * arg1.length) + (32 * arg2.length) + 532 len (4 * arg1.length) + 32])].field_8) = uint8(cd[(arg2 + 68)])
                uint8(stor[sha3(mem[(2 * arg1.length) + (32 * arg2.length) + 532 len (4 * arg1.length) + 32])].field_16) = uint8(cd[(arg2 + 36)])
                require 0 < arg2.length
                require 1 < arg2.length
                require 2 < arg2.length
                mem[(2 * arg1.length) + (32 * arg2.length) + 564] = uint8(cd[(arg2 + 36)])
                mem[(2 * arg1.length) + (32 * arg2.length) + 596] = uint8(cd[(arg2 + 68)])
                mem[(2 * arg1.length) + (32 * arg2.length) + 628] = uint8(cd[(arg2 + 100)])
                mem[(2 * arg1.length) + (32 * arg2.length) + 532] = 128
                mem[(2 * arg1.length) + (32 * arg2.length) + 660] = arg1.length
                mem[(2 * arg1.length) + (32 * arg2.length) + 692 len arg1.length] = arg1[all]
                emit ChangeSTVersionBound(string arg1, uint8 arg2, uint8 arg3, uint8 arg4):
                                          mem[(2 * arg1.length) + (32 * arg2.length) + 532 len (4 * arg1.length) + 160],
            if uint8(s) != 3:
                revert with 0, 'Failed because of in-valid version'
            require 0 < arg2.length
            require 1 < arg2.length
            require 2 < arg2.length
            mem[(2 * arg1.length) + (32 * arg2.length) + 532 len arg1.length] = arg1[all]
            mem[(4 * arg1.length) + (32 * arg2.length) + 532] = 9
            uint8(stor[sha3(mem[(2 * arg1.length) + (32 * arg2.length) + 532 len (4 * arg1.length) + 32])].field_0) = uint8(cd[(arg2 + 100)])
            uint8(stor[sha3(mem[(2 * arg1.length) + (32 * arg2.length) + 532 len (4 * arg1.length) + 32])].field_8) = uint8(cd[(arg2 + 68)])
            uint8(stor[sha3(mem[(2 * arg1.length) + (32 * arg2.length) + 532 len (4 * arg1.length) + 32])].field_16) = uint8(cd[(arg2 + 36)])
            require 0 < arg2.length
            require 1 < arg2.length
            require 2 < arg2.length
            mem[(2 * arg1.length) + (32 * arg2.length) + 564] = uint8(cd[(arg2 + 36)])
            mem[(2 * arg1.length) + (32 * arg2.length) + 596] = uint8(cd[(arg2 + 68)])
            mem[(2 * arg1.length) + (32 * arg2.length) + 628] = uint8(cd[(arg2 + 100)])
            mem[(2 * arg1.length) + (32 * arg2.length) + 532] = 128
            mem[(2 * arg1.length) + (32 * arg2.length) + 660] = arg1.length
            mem[(2 * arg1.length) + (32 * arg2.length) + 692 len arg1.length] = arg1[all]
            emit ChangeSTVersionBound(string arg1, uint8 arg2, uint8 arg3, uint8 arg4):
                                      mem[(2 * arg1.length) + (32 * arg2.length) + 532 len (4 * arg1.length) + 160],
}



}
