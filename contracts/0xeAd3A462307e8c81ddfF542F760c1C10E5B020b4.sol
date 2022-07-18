contract main {




// =====================  Runtime code  =====================


#
#  - setNewBlock(string arg1, string arg2, string arg3, string arg4, string arg5, string arg6)
#
const getArtist = Array(len=97, data='https://swarm-gateways.net/bzz:/', '9d64bafca95a826848fe9d2b3b711d99', 'b579ff15517b414a484dfe6c6cb5d582', '/' >> 512, Mask(8, -768, 'https://swarm-gateways.net/bzz:/', '9d64bafca95a826848fe9d2b3b711d99', 'b579ff15517b414a484dfe6c6cb5d582', '/') << 768)


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 INITIAL_SUPPLY;
array of uint256 image_root;
array of uint256 note_root;
array of uint256 digestCode_root;
array of uint256 txHash_root;
array of uint256 contractSource;
array of uint256 codeVersion;
array of uint256 secretKey_Pre;
array of uint256 name_New;
array of uint256 txHash_Pre;
array of uint256 digestCode_New;
array of uint256 image_New;
array of uint256 note_New;

function name() {
    return name[0 len name.length]
}

function getName() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function getDigestCodeRoot() {
    return digestCode_root[0 len digestCode_root.length]
}

function ContractSource() {
    return contractSource[0 len contractSource.length]
}

function getDigestCodeNew() {
    return digestCode_New[0 len digestCode_New.length]
}

function getContractSource() {
    return contractSource[0 len contractSource.length]
}

function getNoteRoot() {
    return note_root[0 len note_root.length]
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function decimals() {
    return decimals
}

function getTxHashRoot() {
    return txHash_root[0 len txHash_root.length]
}

function TxHash_root() {
    return txHash_root[0 len txHash_root.length]
}

function CodeVersion() {
    return codeVersion[0 len codeVersion.length]
}

function getImageRoot() {
    return image_root[0 len image_root.length]
}

function DigestCode_New() {
    return digestCode_New[0 len digestCode_New.length]
}

function Image_root() {
    return image_root[0 len image_root.length]
}

function getNoteNew() {
    return note_New[0 len note_New.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function getTxHashPre() {
    return txHash_Pre[0 len txHash_Pre.length]
}

function DigestCode_root() {
    return digestCode_root[0 len digestCode_root.length]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getNameNew() {
    return name_New[0 len name_New.length]
}

function getCodeVersion() {
    return codeVersion[0 len codeVersion.length]
}

function Note_root() {
    return note_root[0 len note_root.length]
}

function getImageNew() {
    return image_New[0 len image_New.length]
}

function TxHash_Pre() {
    return txHash_Pre[0 len txHash_Pre.length]
}

function getSecretKeyPre() {
    return secretKey_Pre[0 len secretKey_Pre.length]
}

function Name_New() {
    return name_New[0 len name_New.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function SecretKey_Pre() {
    return secretKey_Pre[0 len secretKey_Pre.length]
}

function Image_New() {
    return image_New[0 len image_New.length]
}

function Note_New() {
    return note_New[0 len note_New.length]
}

function _fallback() {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function getIssuer() {
    return Array(len=97, data='https://swarm-gateways.net/bzz:/', 'ed8149a930eb22cdeceb4e42982ed6cd', '3145cebbc969b814814e34da168d2ebc', '/' >> 512, Mask(8, -768, 'https://swarm-gateways.net/bzz:/', 'ed8149a930eb22cdeceb4e42982ed6cd', '3145cebbc969b814814e34da168d2ebc', '/') << 768), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    mem[ceil32(arg3.length) + 128] = Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)'))
    mem[ceil32(arg3.length) + 228 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1 with:
           funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
             gas gas_remaining wei
            args msg.sender, arg2, address(this.address), Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 228] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 260 len arg3.length % 32]
        call arg1 with:
           funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
             gas gas_remaining wei
            args msg.sender, arg2, address(this.address), Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 228 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    require ext_call.success
    return 1
}



}
