contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
address stor2;
address stor3;

function _fallback() {
    mem[96 len -21891] = code.data[22218 len -21891]
    mem[64] = -21795
    stor0 = msg.sender
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor3 = mem[140 len 20]
    stor2 = mem[172 len 20]
    return code.data[327 len 21891]
}



// =====================  Runtime code  =====================


const TERMS_AND_CONDITIONS = 0x47173285a8d7341e5e972fc677286384f802f8ef42a5ec5f03bbfa254cb01fad


address owner;
array of uint256 VERSION_NUMBER;
address MELON_ASSETAddress;
uint8 stor3; offset 160
address GOVERNANCEAddress;
mapping of address fundByManager;
array of address listOfFunds;
mapping of uint8 stor99;

function GOVERNANCE() {
    return GOVERNANCEAddress
}

function getFundById(uint256 arg1) {
    require arg1 < listOfFunds.length
    return address(listOfFunds[arg1])
}

function getMelonAsset() {
    return MELON_ASSETAddress
}

function getFundByManager(address arg1) {
    return fundByManager[address(arg1)]
}

function VERSION_NUMBER() {
    return VERSION_NUMBER[0 len VERSION_NUMBER.length]
}

function owner() {
    return owner
}

function MELON_ASSET() {
    return MELON_ASSETAddress
}

function listOfFunds(uint256 arg1) {
    require arg1 < listOfFunds.length
    return address(listOfFunds[arg1])
}

function managerToFunds(address arg1) {
    return fundByManager[arg1]
}

function isShutDown() {
    return bool(stor3)
}

function _fallback() payable {
    revert
}

function getLastFundId() {
    return (listOfFunds.length - 1)
}

function shutDown() {
    require GOVERNANCEAddress == msg.sender
    stor3 = 1
}

function sub_21e94de1(?) {
    require stor3
    require arg1 < listOfFunds.length
    require ext_code.size(address(listOfFunds[arg1]))
    call address(listOfFunds[arg1]).0x10b9e583 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit FundUpdated(arg1);
}

function sub_23248ef8(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 6
    mem[ceil32(arg1.length) + 128] = bool(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sub_f60ffb5f(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 160] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, 0x47173285a8d7341e5e972fc677286384f802f8ef42a5ec5f03bbfa254cb01fad)
    mem[ceil32(arg1.length) + 192] = arg8
    mem[ceil32(arg1.length) + 224] = arg9
    mem[ceil32(arg1.length) + 256] = arg10
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, 0x47173285a8d7341e5e972fc677286384f802f8ef42a5ec5f03bbfa254cb01fad), arg8 << 248, arg9, arg10) 
    mem[ceil32(arg1.length) + 128] = signer
    require erecover.result
    require address(signer) == msg.sender
    require not stor3
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160] = 6
    require not stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
    mem[ceil32(arg1.length) + 160 len 18923] = code.data[2925 len 18923]
    mem[ceil32(arg1.length) + 19083] = msg.sender
    mem[ceil32(arg1.length) + 19147] = arg2
    mem[ceil32(arg1.length) + 19179] = arg3
    mem[ceil32(arg1.length) + 19211] = arg4
    mem[ceil32(arg1.length) + 19243] = MELON_ASSETAddress
    mem[ceil32(arg1.length) + 19275] = arg5
    mem[ceil32(arg1.length) + 19307] = arg6
    mem[ceil32(arg1.length) + 19339] = arg7
    mem[ceil32(arg1.length) + 19115] = 288
    mem[ceil32(arg1.length) + 19371] = arg1.length
    mem[ceil32(arg1.length) + 19403 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        create contract with 0 wei
                        code: code.data[2925 len 18923], msg.sender, Array(len=address(arg7), data=arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256), address(arg2), arg3, arg4, MELON_ASSETAddress, address(arg5), address(arg6)
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 19403] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 19435 len arg1.length % 32]
        create contract with 0 wei
                        code: code.data[2925 len 18923], msg.sender, Array(len=address(arg7), data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 19403 len floor32(arg1.length) + -ceil32(arg1.length) + 32]), address(arg2), arg3, arg4, MELON_ASSETAddress, address(arg5), address(arg6)
    require create.new_address
    listOfFunds.length++
    if not listOfFunds.length <= listOfFunds.length + 1:
        idx = listOfFunds.length + 1
        while listOfFunds.length > idx:
            uint256(listOfFunds[idx]) = 0
            idx = idx + 1
            continue 
    address(listOfFunds[listOfFunds.length]) = address(create.new_address)
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160] = 6
    stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] = 1
    fundByManager[address(msg.sender)] = address(create.new_address)
    emit FundUpdated((listOfFunds.length - 1));
}



}
