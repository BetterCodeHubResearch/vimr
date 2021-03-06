/**
 * Tae Won Ha - http://taewon.de - @hataewon
 * See LICENSE
 */

import Cocoa

// See http://stackoverflow.com/a/24104371 for class
public protocol NvimViewDelegate: class {

  func neoVimStopped()
  func set(title: String)
  func set(dirtyStatus: Bool)
  func cwdChanged()
  func bufferListChanged()
  func tabChanged()
  /// Called when the current buffer changes, including when a new one is selected.
  func currentBufferChanged(_ currentBuffer: NvimView.Buffer)

  func colorschemeChanged(to: NvimView.Theme)

  func ipcBecameInvalid(reason: String)

  func scroll()
  func cursor(to: Position)
}
